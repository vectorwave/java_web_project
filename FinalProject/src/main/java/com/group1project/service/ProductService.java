package com.group1project.service;

import java.util.List;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;

import com.group1project.model.bean.Product;

public interface ProductService {

	Product saveProduct(Product product);
	Product getProductById(Integer productId);
	List<Product> getAllProduct();
	void deleteProduct(Integer productId);
	Page<Product> findByPage(Integer pageNumber);
	List<Product> searchProductByName(String Key);
	Page<Product> searchProductByNameWithPage(String key, Pageable pab);
}
