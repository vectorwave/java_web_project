package com.group1project.service;

import java.util.List;

import org.springframework.data.domain.Page;

import com.group1project.model.bean.Article;




public interface ArticleService {

	Article saveArticle(Article article);
	Article getArticleById(int articleId);
	List<Article> getAllArticle();
	void deleteArticle(int articleId);
	Page<Article> findByPage(Integer pageNumber);
//	int[] countArticleCatagory();
}
