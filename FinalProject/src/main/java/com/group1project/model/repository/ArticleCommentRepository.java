package com.group1project.model.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.group1project.model.bean.ArticleComment;

public interface ArticleCommentRepository extends JpaRepository<ArticleComment, Integer> {

}
