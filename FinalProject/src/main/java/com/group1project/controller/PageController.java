package com.group1project.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.group1project.model.bean.Product;
import com.group1project.model.service.ProductService;

@Controller
public class PageController {
	
	@Autowired
	private ProductService pService ;
	
	@GetMapping("back/")
	public String backIndexPage(){
		return "backIndex";
	} 
	
	@GetMapping("back/addProduct")
	public String addProduct(Model model){
		
//		Account account = new Account();
		Product newPd = new Product();
				
//		Integer userId = account.getAccountId();
//		Integer userId = null;
		model.addAttribute("newPd", newPd);
//		model.addAttribute("userId", userId);
		return "addProduct";
	}
	
//	@GetMapping("/login/insert")
//	public String insertAccountPage(Model model) {
//		Account account = new Account();
//		
//		model.addAttribute("account", account);
//		return "addAccount";
//	}
	
//	@GetMapping("back/allProduct2")
//	public String productAll() {
//		return "findAllProduct";
//	}
//	
	
//	@GetMapping("back/Product/all")
//	public String findAllPrdouct(@RequestParam(name="p", defaultValue = "1") Integer pageNumber, Model model) {
//		
//		Page<Product> page = pService.findByPage(pageNumber);
//		
//		model.addAttribute("page", page);
//		
//		return "findAllProduct2";
//		
//	}
	//原本方法
//	@GetMapping("back/allProduct")
//	public ModelAndView viewAllProducts(ModelAndView mav, 
//			@RequestParam(name="p", defaultValue="1") Integer pageNumber) {
//		Page<Product> page = pService.findByPage(pageNumber);
//		
//		mav.getModel().put("page", page);
//		mav.setViewName("findAllProduct2");
//		return mav;
//	
//	}
	
	@GetMapping("back/allProduct")
	@ResponseBody
	public ModelAndView searchProductByPage(ModelAndView mav, 
			@RequestParam(name="p", defaultValue="1") Integer pageNumber,@RequestParam(value="key",defaultValue="" ,required = false) String key ,Model m) {
		
		Pageable pgb = PageRequest.of(pageNumber - 1, 3 ,Sort.Direction.DESC,"productId");
		Page<Product> page = pService.searchProductByNameWithPage(key, pgb);
		
		mav.getModel().put("page", page);
		mav.getModel().put("key", key);
		mav.setViewName("findAllProduct2");
		return mav;
	
	}
	
	
	@GetMapping("searchProduct")
	@ResponseBody
	public Page<Product> searchProduct(@RequestParam("key") String key,@RequestParam(name = "p",defaultValue = "1") Integer pageNumber,Model m) {
	
		 Pageable pgb = PageRequest.of(pageNumber - 1, 3 ,Sort.Direction.DESC,"productId");
		 
		 m.addAttribute("page", pgb);
		 
		 return pService.searchProductByNameWithPage(key, pgb);
	
	}
	
	

	
	
	
}

