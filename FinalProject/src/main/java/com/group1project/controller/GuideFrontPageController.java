package com.group1project.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.group1project.model.bean.Guide;
import com.group1project.model.bean.Product;
import com.group1project.model.service.AccountService;
import com.group1project.model.service.GuideService;
import com.group1project.model.service.ProductService;

@Controller
public class GuideFrontPageController {

	@Autowired
	private GuideService gService;
	
	@Autowired
	private ProductService pService;
	
	@Autowired
	private AccountService aService;
	
//	//所有商家頁面
//	@GetMapping("/testGuidePage")
//	public String allGuidePage() {
//		
//
//		return "front/JoTravelFront/frontGuidePage";
//	}
	
	//所有商家頁面
	@GetMapping("/guides")
	public ModelAndView viewAllGuides(ModelAndView mav, 
			@RequestParam(name="p", defaultValue="1") Integer pageNumber) {
		Page<Guide> page = gService.findByPage2(pageNumber);
		
		mav.getModel().put("page", page);
		mav.setViewName("front/JoTravelFront/frontGuidePage");
		return mav;
		
	}
	
	//所有導遊-導遊個人主頁
	@GetMapping("/guides/{id}")
	public ModelAndView guideDetail(ModelAndView mav, @PathVariable(name="id") Integer id) {
		
		Guide guide = gService.getGuideById(id);
		List<Product> productList = pService.findAllByAccountId(id);
		
		mav.getModel().put("guideInfo", guide);
		mav.getModel().put("productList", productList);
		
		mav.setViewName("front/JoTravelFront/frontGuideDetailPage");
		return mav;
		
	}
	
	//會員中心 商家頁面
	@GetMapping("/guide/myprofile/{id}")
	public ModelAndView viewGuideProfile(ModelAndView mav,@PathVariable Integer id) {
		
		Guide guide = gService.getGuideById(id);
		List<Product> productList = pService.findAllByAccountId(id);
		
		mav.getModel().put("guideInfo", guide);
		mav.getModel().put("productList", productList);
		
		mav.setViewName("front/JoTravelFront/frontGuideProfilePage");
		return mav;
		
	}
	
	//導遊個人資料管理
	@GetMapping("/guide/myprofile/edit/{id}")
	public ModelAndView editGuideProfile(ModelAndView mav,@PathVariable Integer id) {
		
		Guide editGuideInfo = gService.getGuideById(id);
		
		
		if(!(editGuideInfo == null)) {	
			
		mav.getModelMap().put("editGuideInfo", editGuideInfo);
		
		
		} else if(editGuideInfo == null) {
			Guide emptyGuide = new Guide();
			emptyGuide.setAccountId(id);
			mav.getModelMap().put("editGuideInfo", emptyGuide);
		}
		
		mav.setViewName("front/JoTravelFront/EditGuideProfilePage");
		
		return mav;
	}
	
	
	
	
	
	
}
