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

import com.group1project.model.bean.Feedback;
import com.group1project.model.service.FeedbackService;



//rest風格的CRUD 收到的頁面為http://localhost:8080/jotravel/back/product
@Controller
@RequestMapping("/back/feedback") 
public class FeedbackController {

	@Autowired
	private FeedbackService fService;
	
	public FeedbackController(FeedbackService fService) {
		super();
		this.fService = fService;
	}
	
	//查詢商品
	//利用@GetMapping方法查詢商品,沒參數就會查到所有產品 ex: http://localhost:8080/jotravel/back/product
//	@GetMapping
//	@ResponseBody //回傳json格式的資料
//	public List<Feedback> getAllFeedback() {
//		return fService.getAllFeedback();
//	}
	
	//查詢所有商品
	//利用@GetMapping方法查詢商品,給參數就會查到對應產品 ex:http://localhost:8080/jotravel/back/product/1
	@GetMapping("/{id}")
	@ResponseBody //回傳json格式的資料
	public Feedback getFeedbackById(@PathVariable("id") int feedbackId) {
		return fService.getFeedbackById(feedbackId);
	}
	
	
	//新增商品
	//@PostMapping方法,為新增商品,輸入json格式資料即可完成新增,利用@ResponseBody回傳json格式的資料
	@PostMapping("/insert")
	@ResponseBody
	public Feedback saveFeedback(@RequestBody Feedback feedback) {
		Date nowDate = new Date();
	    feedback.onCreate();
		feedback.setStartDate(nowDate);
		feedback.setStatus("未處理");
		return fService.saveFeedback(feedback);
	}
	
//  以非rest風格方式刪除商品
//	@RequestMapping(value="add", method = RequestMethod.POST )
//	@ResponseBody
//	public Product saveProduct2(@RequestBody Product product) {
//		return pService.saveProduct(product);
//	
//	}
	
	
	//刪除商品
	@GetMapping("delete")
	public String deleteFeedback(@RequestParam("id") int feedbackId) {
		fService.deleteFeedback(feedbackId);
		return "redirect:/back/allFeedback";
	}
	
	//以非rest風格的方式刪除商品
//	@RequestMapping(value="delete/{id}" , method = RequestMethod.GET)
//	public String deleteProductById2(@PathVariable("id") int product_id) {
//		pService.deleteProduct(product_id);
//		return "redirect:/saveOK";
//	}
	
	
	@GetMapping("editFeedback")
	public String editFeedback(@RequestParam("id") int feedbackId, Model model) {
		Feedback newPd = fService.getFeedbackById(feedbackId);
		
		Date nowDate = new Date();
		System.out.println(nowDate);
		model.addAttribute("newPd", newPd);
//		model.addAttribute("nowDate", nowDate);
		return "editFeedback";//回到頁面
	}
	
	@PostMapping("editFeedback")
    public String postEditMessage(@ModelAttribute(name="newPd") Feedback newPd) {
		fService.saveFeedback(newPd);
		
		return "redirect:/back/allFeedback";
		
	}

	
	
}
