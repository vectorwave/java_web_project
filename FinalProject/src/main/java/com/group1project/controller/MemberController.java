package com.group1project.controller;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

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
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.group1project.model.bean.Account;
import com.group1project.model.bean.Member;
import com.group1project.model.bean.Product;
import com.group1project.model.service.MemberService;

@Controller
public class MemberController {

	@Autowired
	private MemberService mService;

	// 新增
	@PostMapping("back/member/add")
	public String addMember(@ModelAttribute("member") Member member, @RequestParam("file") MultipartFile file,
			@RequestParam("accountId") Integer accountId, Model model) {

		System.out.println("test" + accountId);

		Account accId = new Account();
		accId.setAccountId(accountId);

		member.setAccount(accId);

//		member.toString();
		try {
			member.setPhotoPath(file.getBytes());
		} catch (IOException e) {
			e.printStackTrace();
		}
		Member result = mService.getMemberByAccountId(accountId);
		if (result == null) {
			mService.saveMember(member);
			return "redirect:/back/member/findall";
		} else {
			return "allMember";
		}
	}

	// 刪除
	@RequestMapping(value = "back/member/delete/{id}", method = RequestMethod.GET)
	public String deleteMemberById(@PathVariable("id") Integer memberId) {
		mService.deleteMember(memberId);
		return "redirect:/back/member/findall";
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
	@GetMapping("back/member/findById/{memberid}")
	public Member findById(@PathVariable Integer accountId) {
		return mService.getMemberById(accountId);
	}

//	@GetMapping("/member/findall")
//	public String FindAllMember(Model model){
//		List<Member> mems = mService.getAllMember();
//		model.addAttribute("member", mems);
//		
//		return "allMember";
//	}
	// 修改
	@GetMapping("back/member/edit")
	public String editMember(@RequestParam("id") Integer accountId, Model model) {
		Member newMember = mService.getMemberByAccountId(accountId);

//		Member member = new Member();
		model.addAttribute("newMember", newMember);
		return "editMember";// 回到頁面
	}

	// 模糊搜尋
	@GetMapping("back/searchMember")
	@ResponseBody
	public List<Member> searchMember(@RequestParam("key") String key, Model m) {

		List<Member> searchMember = mService.searchMemberByName(key);

		m.addAttribute("searchMember", searchMember);

		return searchMember;

	}

	@PostMapping("back/member/edit")
	public String postEditMember(@ModelAttribute(name = "newMember") Member newMember,
			@RequestParam("file") MultipartFile file, @RequestParam("accountId") Integer accountId) {
		Account accId = new Account();
		accId.setAccountId(accountId);

		newMember.setAccount(accId);

		try {
			newMember.setPhotoPath(file.getBytes());
		} catch (IOException e) {
			e.printStackTrace();
		}
		mService.saveMember(newMember);

		return "redirect:/back/member/findall";

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
	@GetMapping("back/member/photo/{accountId}")
	public ResponseEntity<byte[]> downloadImage(@PathVariable("accountId") Integer accountId) {
		Member photo1 = mService.getMemberByAccountId(accountId);

		byte[] photoFile = photo1.getPhotoPath();

		HttpHeaders headers = new HttpHeaders();
		headers.setContentType(MediaType.IMAGE_JPEG);
		// 要回傳的物件, header , httpstatus 回應
		return new ResponseEntity<byte[]>(photoFile, headers, HttpStatus.OK);
	}

	// 取到ID候用Json傳出
	@GetMapping("back/member/searchAccountId/{accountId}")
	@ResponseBody
	public Map<String, Object> searchMemberId(@PathVariable("accountId") Integer accountId) {
		Member result = mService.getMemberByAccountId(accountId);

		Map<String, Object> rmap = new HashMap<>();
		if (result != null) {
			rmap.put("result", "false");
			return rmap;
		}
		rmap.put("result", "true");
		return rmap;
	}

//前台page--------------------------------------------------
	@PostMapping("page/member/add")
	public String pageaddMember(@ModelAttribute("member") Member member, @RequestParam("file") MultipartFile file,
			@RequestParam("accountId") Integer accountId, Model model) {

		System.out.println("test" + accountId);

		Account accId = new Account();
		accId.setAccountId(accountId);

		member.setAccount(accId);

//		member.toString();
		try {
			member.setPhotoPath(file.getBytes());
		} catch (IOException e) {
			e.printStackTrace();
		}
		Member result = mService.getMemberByAccountId(accountId);
		if (result == null) {
			mService.saveMember(member);
			return "redirect:/";
		} else {
			return "redirect:/";
		}
	}

	// 刪除
	@RequestMapping(value = "page/member/delete/{id}", method = RequestMethod.GET)
	public String pagedeleteMemberById(@PathVariable("id") Integer memberId) {
		mService.deleteMember(memberId);
		return "redirect:page/member/findall";
	}

	@GetMapping("page/member/findById/{memberid}")
	public Member pagefindById(@PathVariable Integer accountId) {
		return mService.getMemberById(accountId);
	}

	@GetMapping("page/member/edit")
	public String pageeditMember(@RequestParam("id") Integer accountId, Model model) {
		Member newMember = mService.getMemberByAccountId(accountId);

//			Member member = new Member();
		model.addAttribute("newMember", newMember);
		
		return "front/JoTravelFront/pageMemberEdit";// 回到頁面

	}

	@PostMapping("page/member/edit")
		public String pagepostEditMember(@ModelAttribute(name = "newMember") Member newMember,
				@RequestParam("file") MultipartFile file, @RequestParam("accountId") Integer accountId) {
			Account accId = new Account();
			accId.setAccountId(accountId);

			newMember.setAccount(accId);
			Member member = mService.getMemberById(newMember.getMemberId());
			System.out.println("==========" +member.getPhotoPath());
			newMember.setPhotoPath(member.getPhotoPath()); 
		
			try {
				if(!(file.getSize() == 0)) {				
					newMember.setPhotoPath(file.getBytes());
			} 
			}catch (IOException e) {
				e.printStackTrace();
			}
			mService.saveMember(newMember);

			return "front/JoTravelFront/pageMemberEdit";

		}

	// 模糊搜尋
	@GetMapping("page/searchMember")
	@ResponseBody
	public List<Member> pagesearchMember(@RequestParam("key") String key, Model m) {

		List<Member> searchMember = mService.searchMemberByName(key);

		m.addAttribute("searchMember", searchMember);

		return searchMember;

	}

	@GetMapping("page/member/searchAccountId/{accountId}")
	@ResponseBody
	public Map<String, Object> pagesearchMemberId(@PathVariable("accountId") Integer accountId) {
		Member result = mService.getMemberByAccountId(accountId);

		Map<String, Object> rmap = new HashMap<>();
		if (result != null) {
			rmap.put("result", "false");
			return rmap;
		}
		rmap.put("result", "true");
		return rmap;
	}

	@GetMapping("page/member/photo/{accountId}")
	public ResponseEntity<byte[]> pagedownloadImage(@PathVariable("accountId") Integer accountId) {
		Member photo1 = mService.getMemberByAccountId(accountId);

		byte[] photoFile = photo1.getPhotoPath();

		HttpHeaders headers = new HttpHeaders();
		headers.setContentType(MediaType.IMAGE_JPEG);
		// 要回傳的物件, header , httpstatus 回應
		return new ResponseEntity<byte[]>(photoFile, headers, HttpStatus.OK);
	}

}
