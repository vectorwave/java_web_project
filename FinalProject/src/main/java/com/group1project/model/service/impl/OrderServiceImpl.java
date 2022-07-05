package com.group1project.model.service.impl;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;

import com.group1project.model.bean.Order;
import com.group1project.model.bean.OrderDetail;
import com.group1project.model.bean.OrderDetailId;
import com.group1project.model.repository.OrderDetailRepository;
import com.group1project.model.repository.OrderRepository;
import com.group1project.model.service.OrderService;
@Service
public class OrderServiceImpl implements OrderService{
	
	@Autowired OrderRepository orderRepository;
	@Autowired OrderDetailRepository detailRepository;
	private static final Integer pensPerPage = 4;
	private static final String[] statusType = {"WebATM","ATM","Credit","CVS","BARCODE","ApplePay"};
	@Override
	public List<Order> findByAccountId(Integer accountId, Integer page) {
		PageRequest request = PageRequest.of(page-1, pensPerPage,Sort.by("orderId").descending());
		return orderRepository.findByAccountAccountId(accountId, request).getContent();
	}

	@Override
	public List<Order> findAll() {
		return orderRepository.findAll();
	}

	@Override
	public List<Order> findAll(Integer page) {
		Pageable pageable = PageRequest.of(page-1, pensPerPage);
		return orderRepository.findAll(pageable).getContent();
	}

	@Override
	public Page<Order> findByAccountId(Integer accountId) {
		PageRequest request = PageRequest.of(0, pensPerPage,Sort.by("orderId").descending());
		return  orderRepository.findByAccountAccountId(accountId,request);
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


	@Override
	public void deleteOrderDetail(Integer orderId, Integer productId) {
		OrderDetailId detailId = new OrderDetailId(orderId,productId);
		detailRepository.deleteById(detailId);
		detailRepository.flush();
	}

	@Override
	public List<Order> findAllByAccountId(Integer accountId) {
		return orderRepository.findByAccountAccountId(accountId);
	}

	@Override
	public String getECPayItem(Order order) {
		String ecp = "";
		for(OrderDetail detail :order.getOrderDetails()) {
			ecp+=detail.getProduct().getProductName()+"*"+detail.getAmount()+"#";
		}
		ecp = ecp.substring(0, ecp.length()-1);
		return ecp;
	}

	@Override
	public Long countTotalAmount(Order order) {
		Long totalAmount = 0L;
		for(OrderDetail detail : order.getOrderDetails()) {
			totalAmount += detail.getAmount()*detail.getProduct().getProductPrice();
		}
		return totalAmount;
	}

	@Override
	public Page<Order> findAllForAdmin() {
		Pageable pageable = PageRequest.of(0, pensPerPage);
		return orderRepository.findAll(pageable);
	}

	@Override
	public List<Integer> getCountByCF() {
		List<Integer> cfCount = new ArrayList<Integer>();
		for(String cf : statusType) {
			cfCount.add(orderRepository.countByCashFlow(cf));
		}
		return cfCount;
	}

	


}
