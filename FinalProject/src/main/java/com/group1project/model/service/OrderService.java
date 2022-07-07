package com.group1project.model.service;

import java.util.List;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;

import com.group1project.model.bean.Order;

public interface OrderService {
	
	public List<Order> findAllByAccountId(Integer accountId);
	public Page<Order> findByAccountId(Integer accountId);
	public List<Order> findByAccountId(Integer accountId,Integer page);
	public List<Order> findAll();
	public List<Order> findAll(Integer page);
	public void deleteOrder(Integer orderId);
	public Order save(Order order);
	public void deleteOrderDetail(Integer orderId,Integer productId);
	public String getECPayItem(Order order);
	public Long countTotalAmount(Order order);
	public Page<Order> findAllForAdmin();
	public List<Integer> getCountByCF();
	public Integer[] getCountByAmount(Integer year);
}
