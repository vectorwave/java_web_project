package com.group1project.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.group1project.model.bean.Account;
import com.group1project.model.bean.Product;
import com.group1project.model.service.AccountService;

@Controller
public class AccountPageController {

	@Autowired
	private AccountService aService;

	@GetMapping("/")
	public String Welcome() {
		return "login";
	}

	@GetMapping("/login/insert")
	public String insertAccountPage(Model model) {
		Account account = new Account();

		model.addAttribute("account", account);
		return "addAccount";
	}

	@GetMapping("/login/findall")
	@ResponseBody
	public ModelAndView searchAccountByName(ModelAndView mav,
			@RequestParam(value = "key", defaultValue = "", required = false) String key, Model m) {

		List<Account> account = aService.searchAccountByName(key);

		mav.getModel().put("key", key);
		mav.getModel().put("account", account);
		mav.setViewName("allAccount");
		return mav;
	}

}
