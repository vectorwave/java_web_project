package com.group1project.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class OrderPageController {
	@GetMapping("back/allOrder")
	public String allOrderPage() {
		return "allOrder";
	}
}
