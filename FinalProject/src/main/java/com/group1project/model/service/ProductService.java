package com.group1project.model.service;

import java.util.List;

import org.springframework.data.domain.Page;

import com.group1project.model.bean.Product;


public interface ProductService {

	Product saveProduct(Product product);
	Product getProductById(int product_id);
	List<Product> getAllProduct();
	void deleteProduct(int product_id);
	Page<Product> findByPage(Integer pageNumber);
}
