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

import com.group1project.model.bean.ProductComment;
import com.group1project.model.bean.Product;
import com.group1project.model.repository.ProductCommentRepository;
import com.group1project.model.repository.ProductRepository;
import com.group1project.model.service.ProductCommentService;
import com.group1project.model.service.ProductService;

@Service
@Transactional
public class ProductCommentServiceimpl implements ProductCommentService {

	private ProductCommentRepository pcDao;
	@Autowired
	public ProductCommentServiceimpl(ProductCommentRepository pcDao) {
		super();
		this.pcDao = pcDao;
	}
	@Override
	public ProductComment saveProductComment(ProductComment productComment) {
		
		return pcDao.save(productComment);
	}
	@Override
	public ProductComment getProductCommentById(Integer productCommentId) {
		Optional<ProductComment> pdComment = pcDao.findById(productCommentId);
		
		if(pdComment.isPresent()) {
			return pdComment.get();
		}else {
		return null;
		}
	}
	
	@Override
	public List<ProductComment> getAllProductComment() {
		return pcDao.findAll();
	}
	@Override
	public void deleteProductComment(Integer productCommentId) {
		pcDao.deleteById(productCommentId);
		
	}
	
	
	
	
	

}
