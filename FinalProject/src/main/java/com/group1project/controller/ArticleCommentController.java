package com.group1project.controller;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import com.group1project.model.bean.ArticleComment;
import com.group1project.model.service.ArticleCommentService;
import com.group1project.model.service.ArticleService;
import com.group1project.model.service.ProductService;

//rest風格的CRUD 收到的頁面為http://localhost:8080/jotravel/back/product
@Controller
@RequestMapping("/back/articlecomment") 
public class ArticleCommentController {

	
	private ArticleCommentService acService;
	@Autowired
	public ArticleCommentController(ArticleCommentService acService) {
		super();
		this.acService = acService;
	}
	
	//查詢商品
	//利用@GetMapping方法查詢商品,沒參數就會查到所有產品 ex: http://localhost:8080/jotravel/back/product
	@GetMapping
	@ResponseBody //回傳json格式的資料
	public List<ArticleComment> getAllArticleComment() {
		return acService.getAllArticleComment();
	}
	
	//查詢所有商品
	//利用@GetMapping方法查詢商品,給參數就會查到對應產品 ex:http://localhost:8080/jotravel/back/product/1
	@GetMapping("/{id}")
	@ResponseBody //回傳json格式的資料
	public ArticleComment getArticleCommentById(@PathVariable("id") int article_comment_id) {
		return acService.getArticleCommentById(article_comment_id);
	}
	
	
	//新增商品
	//@PostMapping方法,為新增商品,輸入json格式資料即可完成新增,利用@ResponseBody回傳json格式的資料
	@PostMapping()
	@ResponseBody
	public ArticleComment saveArticleComment(@RequestBody ArticleComment articleComment) {
		return acService.saveArticleComment(articleComment);
	}
	
//  以非rest風格方式刪除商品
//	@RequestMapping(value="add", method = RequestMethod.POST )
//	@ResponseBody
//	public Product saveProduct2(@RequestBody Product product) {
//		return pService.saveProduct(product);
//	
//	}
	
	
	//刪除商品
	@DeleteMapping("{id}")
	public String deleteArticleCommentById(@PathVariable("id") int article_comment_id) {
		acService.deleteArticleComment(article_comment_id);
		return "redirect:/saveOK";
	}
	
	//以非rest風格的方式刪除商品
//	@RequestMapping(value="delete/{id}" , method = RequestMethod.GET)
//	public String deleteProductById2(@PathVariable("id") int product_id) {
//		pService.deleteProduct(product_id);
//		return "redirect:/saveOK";
//	}
	
	
	@GetMapping("editProduct")
	public String editArticle(@RequestParam("id") int article_comment_id, Model model) {
		ArticleComment newArcC = acService.getArticleCommentById(article_comment_id);
		
		Date nowDate = new Date();
		System.out.println(nowDate);
		model.addAttribute("newArcC", newArcC);
//		model.addAttribute("nowDate", nowDate);
		return "editProduct";//回到頁面
	}
	
	@PostMapping("editProduct")
    public String postEditArticleComment(@ModelAttribute(name="newArcC") ArticleComment newArcC) {
		acService.saveArticleComment(newArcC);
		
		return "redirect:/";
		
	}

	
}
