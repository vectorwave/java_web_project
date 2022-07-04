package com.group1project.controller;

import java.io.IOException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Date;
import java.util.List;

import javax.persistence.MapsId;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
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

import com.group1project.model.bean.Account;
import com.group1project.model.bean.Guide;
import com.group1project.model.service.AccountService;
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
	
	@Autowired
	private AccountService aService;
//	public GuideController(AccountService aService) {
//		super();
//		this.aService = aService;
//	}

	
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
	public String saveGuide_info(@ModelAttribute("addGuide") Guide guide, Model m,@RequestParam("profilePic") MultipartFile profilePic,
			@RequestParam("accountName") String accountName, @RequestParam("pwd") String pwd) {
	
		Account guideAccount = new Account();
		guideAccount.setAccountName(accountName);
		
		String password = getStringHash(pwd, "SHA-512");
		
		guideAccount.setPassword(password);
		guideAccount.setStatus("1");
		guideAccount.setTitle("商家");
		
		Date nowdate = new Date();
		guideAccount.setSignupDate(nowdate);
		
		Integer acId = aService.saveAccount(guideAccount).getAccountId();
		
//		System.out.println("==================================");
//		System.out.println(acId);
//		System.out.println("==================================");
		
		guide.setAccount(aService.getAccountById(acId));
		
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
		
		Guide originalGuide = gService.getGuideById(guide.getAccountId());
		guide.setGuidePhoto(originalGuide.getGuidePhoto());
		
		try {
			
			if(!(profilePic.getSize() == 0)) {
			guide.setGuidePhoto(profilePic.getBytes());}	

		} catch (IOException e) {
			e.printStackTrace();
		}
		
		Guide updated = gService.saveGuide(guide);
		m.addAttribute("guideInfo",updated);
		
		return "guideDetail";
	}
	
	//修改帳號狀態
//	@PostMapping("editAcc/{id}")
//	public void updateAccountStatus(@PathVariable("id") Integer id,@RequestParam(name="status") String status) {
//		Account guideAccount = aService.getAccountById(id);
//		guideAccount.setStatus(status);
//		
//		Account newAcc = aService.saveAccount(guideAccount);
//	}
	
	//刪除導遊資料  (沒有前端接boolean會丟錯誤訊息，不過資料庫還是會做刪除)
	@GetMapping("delete/{id}")
	public String deleteById(@PathVariable("id") Integer id) {
		 gService.deleteGuideById(id);
		 aService.deleteAccount(id);
		 return "redirect:/guidemanagement";
	 }
	
	//模糊搜尋
//	@GetMapping("searchGuide")
//	@ResponseBody
//	public Page<Guide> searchGuide(@RequestParam("key") String key,Model m) {
//	
//		Page<Guide> searchResult = gService.searchGuideByProfileName(key);
//		
//		System.out.println("==============================");
//		System.out.println(searchResult);
//		System.out.println("==============================");
//		
//		m.addAttribute("searchResult", searchResult);
//		
//		
//		return searchResult;
//	
//	}
	
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
	
	//密碼加密
		private static String getStringHash(String message, String algorithm) {
			final StringBuffer buffer = new StringBuffer();
			try {
				MessageDigest md = MessageDigest.getInstance(algorithm);
				md.update(message.getBytes());
				byte[] digest = md.digest();

				for (int i = 0; i < digest.length; ++i) {
					byte b = digest[i];
					String s = Integer.toHexString(Byte.toUnsignedInt(b));
					s = s.length() < 2 ? "0" + s : "" + s;
					buffer.append(s);
				}
			} catch (NoSuchAlgorithmException e) {
//				System.out.println("請檢查使用的演算法，演算法有誤");
				return null;
			}
			return buffer.toString();
		}
	

}
