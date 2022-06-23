package com.group1project.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@Controller
public class OrderController {
	
	@GetMapping("cart")
	public String cart() {
		return "cart";
	}
	
	@GetMapping("mycart")
	public String mycart() {
		return "mycart";
	}
}
