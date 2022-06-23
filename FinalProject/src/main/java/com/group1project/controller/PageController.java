package com.group1project.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.group1project.model.bean.Account;
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
		
		Product newPd = new Product();
		model.addAttribute("newPd", newPd);
		
		return "addProduct";
	}
	
//	@GetMapping("/login/insert")
//	public String insertAccountPage(Model model) {
//		Account account = new Account();
//		
//		model.addAttribute("account", account);
//		return "addAccount";
//	}
	
//	@GetMapping("back/allProduct")
//	public String productAll() {
//		return "findAllProduct";
//	}
	
	
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

	@GetMapping("back/allProduct")
	public ModelAndView viewMessages(ModelAndView mav, 
			@RequestParam(name="p", defaultValue="1") Integer pageNumber) {
		System.out.println(pageNumber);
		Page<Product> page = pService.findByPage(pageNumber);
		
		mav.getModel().put("page", page);
		mav.setViewName("findAllProduct2");
		return mav;
	
	}
	
	
	
	
	
}
