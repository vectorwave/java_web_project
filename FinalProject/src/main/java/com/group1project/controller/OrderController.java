package com.group1project.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import com.group1project.model.bean.Account;
import com.group1project.model.bean.Order;
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
		Pageable pageable =PageRequest.of(0, 3);
		orderRepository.findByAccountAccountId(2);
	
		Page<Order> page= orderRepository.findByAccountAccountId(2, pageable);
		return new Object() {public Integer totalPages=page.getTotalPages();public List<Order> orders=page.getContent();};
	}
	
	@PostMapping("newProduct")
	public Object newProduct(@RequestBody OrderDetail detail) {
		;
		System.out.println(detail.getOrder().getOrderId());
		return detail;
	}
}
