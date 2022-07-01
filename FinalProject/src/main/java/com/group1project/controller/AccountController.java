package com.group1project.controller;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
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
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;

import com.group1project.model.bean.Account;
import com.group1project.model.bean.Product;
import com.group1project.model.service.AccountService;
@Controller
@SessionAttributes(names = {"loginuser"})
public class AccountController {

//	@Autowired
	private AccountService aService;
	@Autowired
	public AccountController(AccountService aService) {
		super();
		this.aService = aService;
	}

	// 查詢單筆帳號資料
	@GetMapping("/login/{accountid}")
	@ResponseBody
	public Account getAccountById(@PathVariable("accountid") Integer accountId) {
		return aService.getAccountById(accountId);
	}

	// 查詢所有帳號資料
//	@GetMapping("/login/findall")
//	public String getAllAccount(Model model) {
//		List<Account> accounts = aService.getAllAccount();
//		model.addAttribute("account", accounts);
//
//		return "allAccount";
//	}

	// 會員帳號新增  
	@PostMapping("/login/member/insert")
	public String inserAccount(@ModelAttribute("account") Account account, Model model) {
		Date nowdate = new Date();
		account.setSignupDate(nowdate);
		
		//加密功能
		String password = getStringHash(account.getPassword(), "SHA-512");
		account.setPassword(password);
		
		aService.saveAccount(account);

		return "redirect:/login";
	}
	
	// 商家新增帳號用 
	@PostMapping("/login/guide/insert")
	public String inserGuideAccount(@ModelAttribute("account") Account account, Model model) {
		Date nowdate = new Date();
		account.setSignupDate(nowdate);

		aService.saveAccount(account);
		
		return "redirect:XXXXXXXXX";
	}

	// 刪除帳號
	@RequestMapping(value = "/login/delete/{id}", method = RequestMethod.GET)
	public String deleteAccount(@PathVariable("id") Integer accountId) {
		aService.deleteAccount(accountId);
		return "redirect:/login/findall";
	}

	// 修改
	@GetMapping("/login/edit")
	public String editAccount(@RequestParam("id") Integer accountId, Model model) {
		Account newAccount = aService.getAccountById(accountId);

//					Login login = new Login();
		model.addAttribute("newAccount", newAccount);
		return "editAccount";// 回到頁面
	}
	//修改
	@PostMapping("/login/edit")
    public String postEditAccount(@ModelAttribute(name="newAccount") Account newAccount) {
		
		//加密功能
		String password = getStringHash(newAccount.getPassword(), "SHA-512");
		newAccount.setPassword(password);
		
		aService.saveAccount(newAccount);
		
		return "redirect:/login/findall";
		
	}
	
	//加密
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
//			System.out.println("請檢查使用的演算法，演算法有誤");
			return null;
		}
		return buffer.toString();
	}
	
	//登入
	@RequestMapping(path = "/logingo", method=RequestMethod.POST)
	public String loginCheck(@RequestParam("inputAccount") String inputAccount, @RequestParam("inputPassword") String inputPassword, Model model) {
		
		//加密功能
		String password = getStringHash(inputPassword, "SHA-512");
		Account queryMember = aService.findByAccPwd(inputAccount, password );

		System.out.println("queryMember=" + queryMember);
				
		if(queryMember == null) {	
			model.addAttribute("loginErrorMsg", "登入失敗,帳號不存在");
			return "login";
		} else if(!queryMember.getPassword().equals(password)){
			model.addAttribute("loginErrorMsg", "登入失敗,密碼錯誤");
			return "login";
		} else if(queryMember.getAccountName().equals("")) {
			model.addAttribute("loginuser", queryMember);
			return "redirect:/member/add";
		} else {
			model.addAttribute("loginuser", queryMember);
			return "redirect:/member/add";
		}
	}
	
//	@RequestMapping(path = "/login.password.update", method = RequestMethod.POST)
//	@ResponseBody
//	public Account AccountUpdate(@RequestParam("updateNo") Integer accountId,
//			@RequestParam("updatePwd") String password) {
//		
//	
//		Account member = aService.updateById2(accountId, password);
//
//		return member;
//	}
	
	
	//模糊搜尋
	@GetMapping("searchAccount")
	@ResponseBody
	public List<Account> searchAccount(@RequestParam("key") String key,Model m) {
	
		List<Account> searchAccount = aService.searchAccountByName(key);
		
		m.addAttribute("searchAccount", searchAccount);
		
		return searchAccount;
	
	}
	
	@GetMapping("loginout")
	public String login(SessionStatus status) {
		status.setComplete();
		return "login";
	}

}
