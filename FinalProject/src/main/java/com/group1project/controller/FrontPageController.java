package com.group1project.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.group1project.model.bean.Article;

@Controller
public class FrontPageController {

	@GetMapping("/mainpage")
	public String addFrontBlogPage(Model model){
		
		Article article=new Article();
		
		
		
		model.addAttribute("article", article);
		
		return "front/JoTravelFront/index";
	} 
}
