package com.group1project.model.repository;

import java.util.List;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;

import com.group1project.model.bean.Product;


public interface ProductRepository extends JpaRepository<Product, Integer> {
	public List<Product> findAllByProductNameLike(String key);

	 
	public Page<Product> findAllByProductNameLike(String key,Pageable pab);
}
