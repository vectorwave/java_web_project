package com.group1project.model.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.group1project.model.bean.Article;

public interface ArticleRepository extends JpaRepository<Article, Integer> {

}
