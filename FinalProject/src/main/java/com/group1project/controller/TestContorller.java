package com.group1project.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
public class TestContorller {
	
	//用於測試的控制器
	@PostMapping("test")
	public Object test(Object o) {
		return o;
	}
}
