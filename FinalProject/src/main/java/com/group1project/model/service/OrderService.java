package com.group1project.model.service;

import java.util.List;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;

import com.group1project.model.bean.Order;

public interface OrderService {
	
	public List<Order> findByAccountId(Integer accountId);
	public List<Order> findByAccountId(Integer accountId,Integer page);
	public List<Order> findByProductName(String productName);
	public List<Order> findByProductName(String productName,Integer page);
	public List<Order> findAll();
	public List<Order> findAll(Integer page);
	
	
}