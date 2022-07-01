package com.group1project.model.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.group1project.model.bean.ProductComment;

public interface ProductCommentRepository extends JpaRepository<ProductComment, Integer> {
	public List<ProductComment> findAllByProductNameLike(String key);
	public List<ProductComment> findAllByProductID(Integer productId);
}
