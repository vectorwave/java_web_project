package com.group1project.model.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.group1project.model.bean.ProdcutComment;

public interface ProductCommentRepository extends JpaRepository<ProdcutComment, Integer> {

}
