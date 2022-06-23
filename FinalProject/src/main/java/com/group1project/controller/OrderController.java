package com.group1project.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class OrderController {
	
	@GetMapping("cart")
	public String cart() {
		return "cart";
	}
}
