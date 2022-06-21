package com.ispan.jotravel.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import com.ispan.jotravel.model.bean.ProductOrder;
import com.ispan.jotravel.model.dao.OrderRepository;
import com.ispan.jotravel.model.service.OrderService;

@RestController
public class OrderController {
	
	
	@Autowired private OrderService orderService;
	@Autowired private OrderRepository orderRepository;
	
	@PostMapping("order")
	public void postOrder(@RequestBody ProductOrder order) {
		orderService.submitOrder(order);
	}
	@DeleteMapping("order/{orderId}")
	public void deleteOrder(@PathVariable("orderId") int id) {
		orderService.deleteOrder(id);
	}
	
	@GetMapping("order/{orderId}")
	public ProductOrder getOrder(@PathVariable("orderId") int id) {
		return orderService.getFullOrder(id);
	}
	@PutMapping("order")
	public void putOrder(@RequestBody ProductOrder order) {
		orderRepository.saveAndFlush(order);
	}
	@GetMapping("order/page/{page}")
	public List<ProductOrder> getOrderPage(@PathVariable("page")int index){
		return orderService.getOrderPage(index).getContent();
	}
	@GetMapping("order/all")
	public List<ProductOrder> getAll() {
		return orderService.getAll();
	}
	
	
	
}
