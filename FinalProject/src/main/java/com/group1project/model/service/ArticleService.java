package com.group1project.model.service;

import java.util.List;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;

import com.group1project.model.bean.Article;
import com.group1project.model.bean.Product;




public interface ArticleService {

	Article saveArticle(Article article);
	Article getArticleById(int articleId);
	List<Article> getAllArticle();
	void deleteArticle(int articleId);
	Page<Article> findByPage(Integer pageNumber);
	Page<Article> searchArticleByTitleWithPage(String key, Pageable pab);

//	int[] countArticleCatagory();
}
