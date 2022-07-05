package com.group1project.model.repository;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;

import com.group1project.model.bean.Article;
import com.group1project.model.bean.Product;

public interface ArticleRepository extends JpaRepository<Article, Integer> {
	public Page<Article> findAllByArticleTitleLike(String key,Pageable pab);
	public Page<Article> findAllByArticleCategoryLike(String key,Pageable pab);

}
