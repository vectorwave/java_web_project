package com.group1project.model.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.group1project.model.bean.ProductComment;

public interface ProductCommentRepository extends JpaRepository<ProductComment, Integer> {
	public List<ProductComment> findAllByProductProductNameLike(String key);
	public List<ProductComment> findAllByProductProductId(Integer productId);
}
