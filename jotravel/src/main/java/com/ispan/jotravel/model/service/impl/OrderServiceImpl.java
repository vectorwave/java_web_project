package com.ispan.jotravel.model.service.impl;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;

import com.ispan.jotravel.model.bean.OrderDetail;
import com.ispan.jotravel.model.bean.ProductOrder;
import com.ispan.jotravel.model.dao.OrderDetailRepository;
import com.ispan.jotravel.model.dao.OrderRepository;
import com.ispan.jotravel.model.dao.ProductRepository;
import com.ispan.jotravel.model.service.OrderService;

@Service
public class OrderServiceImpl implements OrderService {

	@Autowired private OrderRepository orderRepository;
	@Autowired private OrderDetailRepository detailRepository;
	@Autowired private ProductRepository productRepository;
	
	@Override
	public Page<ProductOrder> getMyOrderPage(int index,int userId) {
		PageRequest request =PageRequest.of(index-1, 5);
		return null;
	}
	@Override
	public void submitOrder(ProductOrder order) {
		orderRepository.saveAndFlush(order);
		for(OrderDetail detail:order.getDetails()) {
			detail.setOrderId(order.getOrderId());
		}
		detailRepository.saveAllAndFlush(order.getDetails());
	}
	@Override
	public ProductOrder fillOrder(ProductOrder order) {
		List<OrderDetail> details = detailRepository.findByOrderId(order.getOrderId());
		for(OrderDetail detail:details) {
			detail.setProduct(productRepository.findById(detail.getProductId()).get());
		}
		order.setDetails(details);
		return order;
	}
	@Override
	public Page<ProductOrder> getOrderPage(int index) {
		PageRequest request =PageRequest.of(index-1, 5);
		Page<ProductOrder> orderPage = orderRepository.findAll(request);
		orderPage.getContent();
		for(ProductOrder order:orderPage.getContent()) {
			fillOrder(order);
		}
		return orderPage;
	}
	@Override
	public void deleteOrder(int orderId) {
		Optional<ProductOrder> maybeOrder =orderRepository.findById(orderId);
		if(maybeOrder.isPresent()) {
			List<OrderDetail> details = detailRepository.findByOrderId(orderId);
			for(OrderDetail detail:details) {
				detailRepository.delete(detail);
			}
			orderRepository.delete(maybeOrder.get());	
		}
	}
	@Override
	public ProductOrder getFullOrder(int orderId) {
		Optional<ProductOrder> maybeOrder =orderRepository.findById(orderId);
		return maybeOrder.isPresent()?fillOrder(maybeOrder.get()):null;
	}
	@Override
	public List<ProductOrder> getAll() {
		List<ProductOrder> orders=orderRepository.findAll();
		for(ProductOrder order:orders) {
			fillOrder(order);
		}
		return orders;
	}
	
	
	
	
	
}
