package com.group1project.model.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.group1project.model.bean.Order;

public interface OrderRepository extends JpaRepository<Order, Integer> {

}
