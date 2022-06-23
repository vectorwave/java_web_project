package com.group1project.model.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.group1project.model.bean.Product;


public interface ProductRepository extends JpaRepository<Product, Integer> {

}
