package com.group1project.controller;

import java.io.IOException;
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

import com.group1project.model.bean.Guide;
import com.group1project.model.service.GuideService;

@Controller
@RequestMapping("/guide_info")
public class GuideController {

	@Autowired
	private GuideService gService;
	public GuideController(GuideService gService) {
		super();
		this.gService = gService;
	}
	
	//查詢單筆資料
	@GetMapping("/{id}")
	@ResponseBody
	public Guide getGuide_infoById(@PathVariable Integer id) {
		return gService.getGuideById(id);
	}
	
	//查詢多筆資料
	@GetMapping
	@ResponseBody
	public List<Guide> getAllGuide_info(){
		return gService.getAllGuide();
	}
	
	
	//新增導遊資料
	@PostMapping("insert")
	public String saveGuide_info(@ModelAttribute("addGuide") Guide guide, Model m, @RequestParam("profilePic") MultipartFile profilePic) {
		
		try {
			guide.setGuidePhoto(profilePic.getBytes());
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		gService.saveGuide(guide);
		
		Guide emptyGuide = new Guide();
		
		m.addAttribute("addGuide",emptyGuide);
		
		return "addGuide";
	}
	
	//修改導遊資料
	@PostMapping("edit")
	public String updateGuideInfo(@ModelAttribute("guideUpdate") Guide guide, Model m,@RequestParam("profilePic") MultipartFile profilePic) {
		
		try {
			guide.setGuidePhoto(profilePic.getBytes());
		} catch (IOException e) {
			e.printStackTrace();
		}
		
		Guide updated = gService.saveGuide(guide);
		m.addAttribute("guideInfo",updated);
		
		return "guideDetail";
	}
	
	//刪除導遊資料  (沒有前端接boolean會丟錯誤訊息，不過資料庫還是會做刪除)
	@GetMapping("delete/{id}")
	public String deleteById(@PathVariable("id") Integer id) {
		 gService.deleteGuideById(id);
		 return "redirect:/guidemanagement";
	 }
	
	//顯示圖片Controller
	@GetMapping("photo/{id}")
	public ResponseEntity<byte[]> downloadImage(@PathVariable("id") Integer id){
		Guide guide = gService.getGuideById(id);
		
		byte[] guidePic = guide.getGuidePhoto();
	
		HttpHeaders headers = new HttpHeaders();
		headers.setContentType(MediaType.IMAGE_JPEG);
		                               // 要回傳的物件, header , httpstatus 回應
		return new ResponseEntity<byte[]>(guidePic, headers, HttpStatus.OK);
	}

}
