package com.group1project.model.service.impl;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.group1project.model.bean.Product;
import com.group1project.model.repository.ProductRepository;
import com.group1project.model.service.ProductService;

@Service
@Transactional
public class ProductServiceimpl implements ProductService {

	private ProductRepository pDao;
	@Autowired
	public ProductServiceimpl(ProductRepository pDao) {
		super();
		this.pDao = pDao;
	}
	
	@Override
	public Product saveProduct(Product product) {
		return  pDao.save(product);
	}
	
	

	@Override
	public void deleteProduct(int product_id) {
		pDao.deleteById(product_id);
	}


	@Override
	public Product getProductById(int product_id) {
	 Optional<Product> product = pDao.findById(product_id);
	 
//	 if(product.isPresent()) {
		 return product.get();
//	 }else {
//		 return null;
//	 }
//		
	}

	@Override
	public List<Product> getAllProduct() {
		return pDao.findAll();
	}


	
	@Override
	public Page<Product> findByPage(Integer pageNumber) {
		   Pageable pgb = PageRequest.of(pageNumber - 1, 4 ,Sort.Direction.DESC,"productid");
		   
		   Page<Product> page = pDao.findAll(pgb);
		   
		   return page;
		  }

}
