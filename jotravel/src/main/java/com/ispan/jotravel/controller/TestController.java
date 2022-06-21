package com.ispan.jotravel.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import com.ispan.jotravel.model.bean.ProductOrder;

@Controller
public class TestController {
	@GetMapping("addProduct")
	public String add() {
		return "addProduct";
	}
	@GetMapping("cart")
	public String addOrder() {
		return "cart";
	}
	
}
