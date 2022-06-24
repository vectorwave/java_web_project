package com.group1project.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.group1project.model.bean.Member;
import com.group1project.model.service.MemberService;

@Controller
public class MemberPageController {

	@Autowired
	private MemberService mService;
	
	@GetMapping("/member/add")
	public String addMemberPage(Model model) {
		Member member = new Member();
		
		model.addAttribute("member", member);
		return "addMember";
	}
	
	
	@GetMapping("/member/findall")
	public String FindAllMember(Model model){
		List<Member> mems = mService.getAllMember();
		model.addAttribute("member", mems);
		
		return "allMember";
	}
}