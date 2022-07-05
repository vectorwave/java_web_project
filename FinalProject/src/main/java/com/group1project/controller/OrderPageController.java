package com.group1project.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class OrderPageController {
	@GetMapping("back/allOrder")
	public String allOrderPage() {
		return "allOrder";
	}
	@GetMapping("checkout")
	public String addOrder() {
		return "checkout";
	}
	@GetMapping("back/downloadOrder")
	public String downloadOrder() {
		return "downloadOrder";
	}
	@GetMapping("back/stOrder")
	public String stOrder() {
		return "stOrder";
	}
	@GetMapping("front/allOrder")
	public String frontAllOrder() {
		return "front/JoTravelFront/allOrder";
	}
}
