package com.group1project.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

import com.group1project.model.bean.Account;
import com.group1project.model.bean.Article;
import com.group1project.model.bean.Guide;
import com.group1project.model.bean.Product;
import com.group1project.model.bean.ProductComment;
import com.group1project.model.service.AccountService;
import com.group1project.model.service.ArticleService;
import com.group1project.model.service.GuideService;
import com.group1project.model.service.ProductCommentService;
import com.group1project.model.service.ProductService;

@SessionAttributes("account")
@Controller
public class ArticlePageController {
	
	
	
	@Autowired
	private ArticleService aService;

	

	
	
	

	
	
	
//	########################後台頁面########################

	@GetMapping("article/add")
	public String addArticlePage(Model model) {
		
		Article article=new Article();
		
		
		
		model.addAttribute("article", article);
	
		
		return "editArticle";
	}
	
	@GetMapping("article/all")
	public ModelAndView viewAllArticles(ModelAndView mav, 
			@RequestParam(name="p", defaultValue = "1") Integer pageNumber,@RequestParam(value="key",defaultValue="" ,required = false) String key,Model m) {
		//Page<Article> page = aService.findByPage(pageNumber);
		
		Pageable pgb = PageRequest.of(pageNumber - 1, 5 ,Sort.Direction.DESC,"articleId");

		Page<Article> page = aService.searchArticleByTitleWithPage(key, pgb);

		mav.getModel().put("page", page);
		mav.getModel().put("key", key);
		mav.setViewName("viewArticles");
		return mav;
	}
	
//前台
	@GetMapping("front666/")
	public String frontPage(){
		return "frontend";
	}

		@GetMapping("front/blogIndex")
		public ModelAndView viewAllArticlePage(ModelAndView mav, 
				@RequestParam(name="p", defaultValue="1") Integer pageNumber,@RequestParam(value="key",defaultValue="" ,required = false) String key,Model m) {

			Pageable pgb = PageRequest.of(pageNumber - 1, 5 ,Sort.Direction.DESC,"articleId");

			Page<Article> page = aService.searchArticleByTitleWithPage(key, pgb);

			mav.getModel().put("page", page);
			mav.getModel().put("key", key);
			mav.setViewName("front/JoTravelFront/blogIndex");
			return mav;
		}
		
		@GetMapping("/front/blogPage/detail")
		public String frontBlogPage(@RequestParam("id") Integer articleId,Model model){
			
			Article article= aService.getArticleById(articleId);
//			List<ProductComment> pdComment =  pcService.getAllProductCommentByProductId(articleId);
		
			model.addAttribute("article", article);
//			model.addAttribute("pdComment", pdComment);
			
			return "front/JoTravelFront/blogSingle";
		} 
		
		@GetMapping("front/addBlogPage")
		public String addFrontBlogPage(Model model){
			
			Article article=new Article();
			
			
			
			model.addAttribute("article", article);
			
			return "front/JoTravelFront/addBlog";
		} 
		
	}
		

