package com.group1project.controller;

import java.io.IOException;
import java.util.Date;
import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.web.servlet.server.Session;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.multipart.MultipartFile;

import com.group1project.model.bean.Account;
import com.group1project.model.bean.Product;
import com.group1project.model.service.ProductService;

//rest風格的CRUD 收到的頁面為http://localhost:8080/jotravel/back/product

@Controller
@RequestMapping("back/product") 
public class ProductController {

	
	private ProductService pService;
	@Autowired
	public ProductController(ProductService pService) {
		super();
		this.pService = pService;
	}
	
	//TEST
	private final Integer accountId = 1;
	
	
	
	
	//查詢商品
	//利用@GetMapping方法查詢商品,沒參數就會查到所有產品 ex: http://localhost:8080/jotravel/back/product
	@GetMapping
	@ResponseBody //回傳json格式的資料
	public List<Product> getAllProduct(Model m) {
		List<Product> list = pService.getAllProduct(); 
		
		m.addAttribute("list", list);
		
		return list;
	}
	
	
	//查詢所有商品
	//利用@GetMapping方法查詢商品,給參數就會查到對應產品 ex:http://localhost:8080/jotravel/back/product/1
	@GetMapping("{id}")
	@ResponseBody //回傳json格式的資料
	public Product getProductById(@PathVariable("id") int product_id) {
		return pService.getProductById(product_id);
	}
	
	
	//新增商品
	//@PostMapping方法,為新增商品,輸入json格式資料即可完成新增,利用@ResponseBody回傳json格式的資料
	@PostMapping()
	public String saveProduct(@ModelAttribute("newPd") Product product,
			@RequestParam("file") MultipartFile file,@RequestParam("accountId") Integer accountId,
			Model model) {
//		Account account = storeservice.findbyid(storeId);
		Account accId = new Account();
//		System.out.println(accountId);
		
		accId.setAccountId(this.accountId);
		System.out.println(accId);

//		userBean.getID
		
		product.setAccount(accId);
		try {
			product.setProductPic(file.getBytes());
		} catch (IOException e) {
			e.printStackTrace();
		}
		
		pService.saveProduct(product);
		
//		Product newPd = new Product();
//		model.addAttribute("newPd", newPd);
		
		HashMap<String, String> message = new HashMap<String, String>();
		
		message.put("okMsg", "insertOK");
		model.addAttribute("msg", message);
		
		return "redirect:/back/allProduct";
	}
	
//  以非rest風格方式刪除商品
//	@RequestMapping(value="add", method = RequestMethod.POST )
//	@ResponseBody
//	public Product saveProduct2(@RequestBody Product product) {
//		return pService.saveProduct(product);
//	
//	}
	
	
	//刪除商品
//	@DeleteMapping("{id}")
//	public String deleteProductById(@PathVariable("id") int product_id) {
//		pService.deleteProduct(product_id);
//		return "redirect:/back/allProduct";
//	}
//	
	//以非rest風格的方式刪除商品
	@RequestMapping(value="delete/{id}" , method = RequestMethod.GET)
	public String deleteProductById2(@PathVariable("id") int product_id) {
		pService.deleteProduct(product_id);
		return "redirect:/back/allProduct";
	}
	
	
	@GetMapping("editProduct")
	public String editProducte(@RequestParam("id") int product_id, Model model) {
		Product newPd = pService.getProductById(product_id);

		model.addAttribute("newPd", newPd);
		model.addAttribute("photo", product_id);
//		model.addAttribute("nowDate", nowDate);
		return "editProduct";//回到頁面
	}
	
	
	
	
	@PostMapping("editProduct")
    public String postEditMessage(@ModelAttribute(name="newPd") Product newPd ,
    		@RequestParam("file") MultipartFile file, Model model) {
		
		try {
			newPd.setProductPic(file.getBytes());
		} catch (IOException e) {
			e.printStackTrace();
		}
		
		Date nowDate = new Date();
		newPd.setUpdatedTime(nowDate);
		
		pService.saveProduct(newPd);
		
		return "redirect:/back/allProduct";
		
	}
	
	@GetMapping("photo/{id}")
	public ResponseEntity<byte[]> downloadImage(@PathVariable("id") Integer id){
		Product photo1 = pService.getProductById(id);
		
		byte[] photoFile = photo1.getProductPic();

		
		HttpHeaders headers = new HttpHeaders();
		headers.setContentType(MediaType.IMAGE_JPEG);
		                               // 要回傳的物件, header , httpstatus 回應
		return new ResponseEntity<byte[]>(photoFile, headers, HttpStatus.OK);
	}


	@GetMapping("searchProduct")
	@ResponseBody
	public List<Product> searchProduct(@RequestParam("key") String key,Model m) {
	
		List<Product> searchProducts = pService.searchProductByName(key);
		
		m.addAttribute("searchProducts", searchProducts);
		
		return searchProducts;
	
	}
	
}
