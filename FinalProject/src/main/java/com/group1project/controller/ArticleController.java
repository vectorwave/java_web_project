package com.group1project.controller;

import java.io.IOException;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
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
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.group1project.model.bean.Article;
import com.group1project.service.ArticleService;

//rest風格的CRUD 收到的頁面為http://localhost:8080/jotravel/back/product
@Controller
@RequestMapping("/back/article/") 
public class ArticleController {

	
	private ArticleService aService;
	@Autowired
	public ArticleController(ArticleService aService) {
		super();
		this.aService = aService;
	}
	
	//查詢商品
	//利用@GetMapping方法查詢商品,沒參數就會查到所有產品 ex: http://localhost:8080/jotravel/back/product
	@GetMapping
	@ResponseBody //回傳json格式的資料
	public List<Article> getAllArticle() {
		return aService.getAllArticle();
	}
	
	//查詢所有商品
	//利用@GetMapping方法查詢商品,給參數就會查到對應產品 ex:http://localhost:8080/jotravel/back/product/1
	@GetMapping("/{id}")
	@ResponseBody //回傳json格式的資料
	public Article getArticleById(@PathVariable("id") int articleId) {
		return aService.getArticleById(articleId);
	}
	
	
	//新增商品
	//@PostMapping方法,為新增商品,輸入json格式資料即可完成新增,利用@ResponseBody回傳json格式的資料
//	@PostMapping("editArticle")
//	@ResponseBody
//	public Article saveArticle(@RequestBody Article article) {
//		return aService.saveArticle(article);
//	}
//	
//  以非rest風格方式刪除商品
//	@RequestMapping(value="add", method = RequestMethod.POST )
//	@ResponseBody
//	public Product saveProduct2(@RequestBody Product product) {
//		return pService.saveProduct(product);
//	
//	}
	
	
	//刪除商品
//	@DeleteMapping("{id}")
//	public String deleteArticleById(@PathVariable("id") int articleId) {
//		aService.deleteArticle(articleId);
//		return "redirect:/saveOK";
//	}
	
	//以非rest風格的方式刪除商品
	@GetMapping("delete/{id}")
	public String deleteProductById2(@PathVariable("id") int articleId) {
		
		aService.deleteArticle(articleId);
		return "redirect:/article/all";
	}
	
	@GetMapping("update/{id}")
	public String updateProductById2(Model model,@PathVariable("id") int articleId) {
		
		
        Article article=new Article();
		article = aService.getArticleById(articleId);
		
		
		model.addAttribute("article", article);
	
		
		return "updateArticle";
	}
	
	
	@PostMapping("editArticle")
    public String editArticle(@ModelAttribute("article") Article arc, Model model,@RequestParam("file") MultipartFile file) {
		
		try {
			arc.setArticlePic(file.getBytes());
		} catch (IOException e) {
			e.printStackTrace();
		}
		
		Date nowDate = new Date();
		arc.setArticleDate(nowDate);
		System.out.println(nowDate);
		aService.saveArticle(arc);
		
		
		Article newArc = new Article();
		
		model.addAttribute("Article", newArc);
		
//		
		return "redirect:/article/all";
		
	}
	@GetMapping("photo/{id}")
	public ResponseEntity<byte[]> downloadImage(@PathVariable("id") Integer id){
		Article photo1 = aService.getArticleById(id);
		
		byte[] photoFile = photo1.getArticlePic();

		
		HttpHeaders headers = new HttpHeaders();
		headers.setContentType(MediaType.IMAGE_JPEG);
		                               // 要回傳的物件, header , httpstatus 回應
		return new ResponseEntity<byte[]>(photoFile, headers, HttpStatus.OK);
	}
	
	
}
