package com.group1project.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.group1project.model.bean.Account;
import com.group1project.model.service.AccountService;

@Controller
public class AccountPageController {
	
	@Autowired
//	private AccountService aService;

	@GetMapping("/")
	public String Welcome(){
		return "index";
	}
	
//	@GetMapping("/login/insert")
//	public String insertAccountPage(Model model) {
//		Account account = new Account();
//		
//		model.addAttribute("account", account);
//		return "addAccount";
//	}
}
