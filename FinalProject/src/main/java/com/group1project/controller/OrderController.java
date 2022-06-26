package com.group1project.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestAttribute;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.group1project.model.bean.Order;
import com.group1project.model.service.OrderService;

@RestController
@RequestMapping("order")
public class OrderController {
	
	@Autowired OrderService orderService;
	
	@GetMapping("all")
	public Object getAllOrder() {
		return orderService.findAll();
	}
	
	@PostMapping
	public Object postOrder(@RequestBody Order order) {
		return orderService.save(order);
	}
	@DeleteMapping("delete")
	public void deleteOrderDetail(@RequestParam("orderId")Integer orderId,@RequestParam(value="productId",required = false)Integer productId) {
		if(productId==null) 
			orderService.deleteOrder(orderId);
		else 
			orderService.deleteOrderDetail(productId, orderId);
		
	}
	
	
}
