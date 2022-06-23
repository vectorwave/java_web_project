package com.group1project.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import com.group1project.model.bean.Account;
import com.group1project.model.bean.OrderDetail;
import com.group1project.model.bean.OrderDetailId;
import com.group1project.model.bean.Product;
import com.group1project.model.repository.AccountRepository;
import com.group1project.model.repository.MemberRepository;
import com.group1project.model.repository.OrderDetailRepository;
import com.group1project.model.repository.OrderRepository;
import com.group1project.model.repository.ProductRepository;

@RestController
public class OrderController {
	
	@Autowired AccountRepository accountRepository;
	@Autowired MemberRepository memberRepository;
	@Autowired ProductRepository productRepository;
	@Autowired OrderRepository orderRepository;
	@Autowired OrderDetailRepository detailRepository;
	@GetMapping("test")
	public Object get(@RequestBody OrderDetailId id) {
		id.getOrderId();
		System.out.println(id.getOrderId());
		detailRepository.deleteById(id);
		detailRepository.flush();
		return null;
	
	}
	
	@PostMapping("newProduct")
	public Object newProduct(@RequestBody OrderDetail detail) {
		;
		System.out.println(detail.getOrder().getOrderId());
		return detail;
	}
}
