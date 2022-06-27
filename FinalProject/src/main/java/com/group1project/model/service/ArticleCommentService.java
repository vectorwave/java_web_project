package com.group1project.model.service;

import java.util.List;

import com.group1project.model.bean.ArticleComment;




public interface ArticleCommentService {

	ArticleComment saveArticleComment(ArticleComment articleComment);
	ArticleComment getArticleCommentById(int article_comment_id);
	List<ArticleComment> getAllArticleComment();
	void deleteArticleComment(int article_comment_id);
	
}
