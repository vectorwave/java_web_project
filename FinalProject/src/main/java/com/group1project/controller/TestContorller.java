package com.group1project.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RestController;

import com.group1project.model.bean.Account;
import com.group1project.model.bean.Product;
import com.group1project.model.repository.AccountRepository;
import com.group1project.model.repository.ProductRepository;

@RestController
public class TestContorller {
	
	
	@Autowired AccountRepository accountRepository;
	@Autowired ProductRepository productRepository;
	//用於測試的控制器
	@PostMapping("test")
	public Object test(Object o) {
		Account account = new Account();
		account.setAccountName("凱蒂貓");
		accountRepository.saveAndFlush(account);
		Product product = new Product();
		product.setProductName("kitty");
		product.setAccount(account);
		productRepository.saveAndFlush(product);
		return product;
	}
}
