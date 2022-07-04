package com.group1project.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.group1project.model.bean.Account;
import com.group1project.model.bean.Guide;
import com.group1project.model.service.AccountService;
import com.group1project.model.service.GuideService;

@Controller
public class GuidePlatformPageController {

	@Autowired
	private GuideService gService;
	
	@Autowired
	private AccountService acService;

	//所有商家頁面
		@GetMapping("/guidemanagement")
		public ModelAndView allGuidePage(ModelAndView mav, @RequestParam(name="p", defaultValue = "1") Integer pageNumber) {
			
			Page<Guide> page = gService.findByPage(pageNumber);
			
			Integer history = pageNumber;
			
			mav.getModel().put("page", page);
			mav.setViewName("allGuide");
			
			return mav;
		}
		
		//導遊詳細資訊
		@GetMapping("/guidemanagement/info/{id}")
		public ModelAndView guideDetails(ModelAndView mav, @PathVariable("id") int id) {
			Guide guideInfo = gService.getGuideById(id);
//			Account guideAcc = acService.getAccountById(id);
			
			mav.getModel().put("guideInfo", guideInfo);
//			mav.getModel().put("guideAcc", guideAcc);
			mav.setViewName("guideDetail");
			return mav;
		}
		
		
		//新增導遊
		@GetMapping("/guidemanagement/addguide")
		public ModelAndView insertGuide(ModelAndView mav) {
			
			Guide newGuide = new Guide();
			mav.getModel().put("addGuide", newGuide);
			mav.setViewName("addGuide");
			
			return mav;
		}
		
		//更新導遊
		@GetMapping("/guidemanagement/update/{id}")
		public ModelAndView updateGuideInfo(ModelAndView mav, @PathVariable("id") int id) {
			Guide guideUpdate = gService.getGuideById(id);
			Account guideAcc = acService.getAccountById(id);
			
			mav.getModel().put("guideUpdate", guideUpdate);
			mav.getModel().put("accUpdate", guideAcc);
			mav.setViewName("updateGuide");
			return mav;
		}
		
		//搜尋功能
		@GetMapping("/guidemanagement/search")
		@ResponseBody
		public ModelAndView searchAccountByName(ModelAndView mav,
				@RequestParam(value = "key", defaultValue = "", required = false) String key,String con, Model m) {

			if(con.equals("name")) {
				List<Guide> searchGuide = gService.searchGuideByProfileName(key);
				
				if(searchGuide.isEmpty()) {
					mav.setViewName("noGuide");
					
					return mav;
				}
				
				mav.getModel().put("key", key);
				mav.getModel().put("searchGuide", searchGuide);
				mav.setViewName("allGuideSearch");
				return mav;
			};
			
			if(con.equals("id")) {
				
				boolean isNumeric =  key.matches("[+-]?\\d*(\\.\\d+)?");
				
				if(!isNumeric || key.equals("")) {
					mav.setViewName("noGuide");
					return mav;
				}
				
				Integer id = Integer.parseInt(key);
				Guide oneGuide = gService.getGuideById(id);
				
				if(oneGuide == null) {

					mav.setViewName("noGuide");
					
					return mav;
					
				} else {
					
					Account guideAcc = acService.getAccountById(id);
					
					mav.getModel().put("key", key);
					mav.getModel().put("guideAcc", guideAcc);
					mav.getModel().put("guideInfo", oneGuide);
					mav.setViewName("guideDetail");
					
					return mav;
				}
				
			};
			
			return null;		
		}
		
	
}
