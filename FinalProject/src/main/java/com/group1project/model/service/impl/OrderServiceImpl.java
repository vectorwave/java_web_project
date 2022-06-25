package com.group1project.model.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import com.group1project.model.bean.Order;
import com.group1project.model.bean.OrderDetail;
import com.group1project.model.repository.OrderDetailRepository;
import com.group1project.model.repository.OrderRepository;
import com.group1project.model.service.OrderService;
@Service
public class OrderServiceImpl implements OrderService{
	
	@Autowired OrderRepository orderRepository;
	@Autowired OrderDetailRepository detailRepository;
	

	@Override
	public List<Order> findByAccountId(Integer accountId, Integer page) {
		PageRequest request = PageRequest.of(page-1, 3);
		return orderRepository.findByAccountAccountId(accountId, request).getContent();
	}


	@Override
	public List<Order> findAll() {
		return orderRepository.findAll();
	}

	@Override
	public List<Order> findAll(Integer page) {
		Pageable pageable = PageRequest.of(page-1, 3);
		return orderRepository.findAll(pageable).getContent();
	}

	@Override
	public List<Order> findByAccountId(Integer accountId) {
		return  orderRepository.findByAccountAccountId(accountId);
	}


	@Override
	public void deleteOrder(Integer orderId) {
		orderRepository.deleteById(orderId);
		
	}


	@Override
	public Order save(Order order) {
		
		orderRepository.saveAndFlush(order);
		for(OrderDetail detail:order.getOrderDetails()) {
			detail.setOrder(order);
			detailRepository.save(detail);
		}
		detailRepository.flush();
		return order;
	}


}
