package com.group1project.model.service;

import java.util.List;

import com.group1project.model.bean.ProductComment;

public interface ProductCommentService {
	
	ProductComment saveProductComment(ProductComment productComment);
	ProductComment getProductCommentById(Integer productCommentId);
	List<ProductComment> getAllProductComment();
	void deleteProductComment(Integer productCommentId);
	
}
