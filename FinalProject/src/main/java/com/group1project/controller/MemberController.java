package com.group1project.controller;

import java.io.IOException;

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
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.group1project.model.bean.Account;
import com.group1project.model.bean.Member;
import com.group1project.model.service.MemberService;



@Controller
public class MemberController {
	
	@Autowired
	private MemberService mService;

//	private Integer accountId=6;
	// 新增
	@PostMapping("/member/add")
	public String addMember(@ModelAttribute("member") Member member,@RequestParam("file") MultipartFile file ,@RequestParam("accountId") Integer accountId, Model model) {
		
		Account accId = new Account();
		accId.setAccountId(accountId);
		
		member.setAccount(accId);
		
//		member.toString();
		try {
			member.setPhotoPath(file.getBytes());
		} catch (IOException e) {
			e.printStackTrace();
		}
		
		mService.saveMember(member);
		return "redirect:/member/findall";
	}
	

	// 刪除
	@RequestMapping(value="/member/delete/{id}", method = RequestMethod.GET)
	public String deleteMemberById(@PathVariable("id") Integer memberId) {
		mService.deleteMember(memberId);
		return "redirect:/member/findall";
	}
	
//	//搜尋全部
//	@GetMapping("/member/findallmember")
//	public String FindAllMember(Model model){
//		List<Member> mems = mService.getAllMember();
//		model.addAttribute("mems", mems);
//		
//		return "member";
//	}
//	
	@GetMapping("/member/findById/{memberid}")
	public Member findById(@PathVariable Integer accountId){
		return mService.getMemberById(accountId);
	}
	
	//修改
	@GetMapping("/member/edit")
	public String editMember(@RequestParam("id") Integer accountId, Model model) {
		Member newMember = mService.getMemberByAccountId(accountId);
		
//		Member member = new Member();
		model.addAttribute("newMember", newMember);
		return "editMember";//回到頁面
	}
	
	

	
	@PostMapping("/member/edit")
    public String postEditMember(@ModelAttribute(name="newMember") Member newMember, @RequestParam("file") MultipartFile file,@RequestParam("accountId") Integer accountId) {
		Account accId = new Account();
		accId.setAccountId(accountId);
		
		newMember.setAccount(accId);
		
		try {
			newMember.setPhotoPath(file.getBytes());
		} catch (IOException e) {
			e.printStackTrace();
		}
		mService.saveMember(newMember);
		
		return "redirect:/member/findall";
		
	}
//	@PostMapping("/member/add")
//	 public String saveMember(@ModelAttribute("newPd") Member mem, Model model) {
//	  mService.saveMember(mem);
//	  
//	//  Product newPd = new Product();
//	//  model.addAttribute("newPd", newPd);
//	  
//	  HashMap<String, String> member = new HashMap<String, String>();
//	  
//	  member.put("ok", "insertOK");
//	  model.addAttribute("member", member);
//	  
//	  return "addMember";
//	 }
	@GetMapping("/member/photo/{accountId}")
	public ResponseEntity<byte[]> downloadImage(@PathVariable("accountId") Integer accountId){
		Member photo1 = mService.getMemberByAccountId(accountId);
		
		byte[] photoFile = photo1.getPhotoPath();

		
		HttpHeaders headers = new HttpHeaders();
		headers.setContentType(MediaType.IMAGE_JPEG);
		                               // 要回傳的物件, header , httpstatus 回應
		return new ResponseEntity<byte[]>(photoFile, headers, HttpStatus.OK);
	}


}
