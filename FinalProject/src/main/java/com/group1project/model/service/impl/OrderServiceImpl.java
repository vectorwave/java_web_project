package com.group1project.model.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import com.group1project.model.bean.Order;
import com.group1project.model.repository.OrderRepository;
import com.group1project.model.service.OrderService;
@Service
public class OrderServiceImpl implements OrderService{
	
	@Autowired OrderRepository orderRepository;
	
	

	@Override
	public List<Order> findByAccountId(Integer accountId, Integer page) {
		PageRequest request = PageRequest.of(page-1, 3);
		return orderRepository.findByAccountAccountId(accountId, request).getContent();
	}

	@Override
	public List<Order> findByProductName(String productName, Integer page) {
		return null;
	}

	@Override
	public List<Order> findAll() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Order> findAll(Integer page) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Order> findByAccountId(Integer accountId) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Order> findByProductName(String productName) {
		// TODO Auto-generated method stub
		return null;
	}

}
