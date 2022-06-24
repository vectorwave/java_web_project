package com.group1project.controller;

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

import com.group1project.model.bean.Account;
import com.group1project.model.service.AccountService;
@Controller
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
	@GetMapping("/login/findall")
	public String getAllAccount(Model model) {
		List<Account> accounts = aService.getAllAccount();
		model.addAttribute("account", accounts);

		return "allAccount";
	}

	// 會員帳號新增  
	@PostMapping("/login/member/insert")
	public String inserAccount(@ModelAttribute("account") Account account, Model model) {
		Date nowdate = new Date();
		account.setSignupDate(nowdate);

		aService.saveAccount(account);
		return "redirect:/login/findall";
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
	
	@PostMapping("/login/edit")
    public String postEditAccount(@ModelAttribute(name="newAccount") Account newAccount) {
		
		aService.saveAccount(newAccount);
		
		return "redirect:/login/findall";
		
	}

}
