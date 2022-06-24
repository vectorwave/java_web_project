package com.group1project.model.repository;

import java.util.List;
import java.util.Optional;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;

import com.group1project.model.bean.Order;

public interface OrderRepository extends JpaRepository<Order, Integer> {
	public List<Order> findByAccountAccountId(Integer accountId);
	public Page<Order> findByAccountAccountId(Integer accountId,Pageable pageable);
	public List<Order> findByCashFlow(String cashFlow);
	public Page<Order> findByCashFlow(String cashFlow,Pageable pageable);
	public List<Order> findByStatus(String status);
	public Page<Order> findByStatus(String status,Pageable pageable);
	
}
