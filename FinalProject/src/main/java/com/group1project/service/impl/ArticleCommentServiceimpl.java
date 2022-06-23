package com.group1project.service.impl;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.group1project.model.bean.ArticleComment;
import com.group1project.model.repository.ArticleCommentRepository;
import com.group1project.service.ArticleCommentService;

@Service
public class ArticleCommentServiceimpl implements ArticleCommentService {
	
	
	@Autowired private  ArticleCommentRepository acDao;
	
	@Override
	public ArticleComment saveArticleComment(ArticleComment articleComment) {
		return  acDao.save(articleComment);
	}
	
	@Autowired
	public ArticleCommentServiceimpl(ArticleCommentRepository acDao) {
		super();
		this.acDao = acDao;
	}

	@Override
	public void deleteArticleComment(int article_comment_id) {
		acDao.deleteById(article_comment_id);
	}


	@Override
	public ArticleComment getArticleCommentById(int article_comment_id) {
	 Optional<ArticleComment> articleComment = acDao.findById(article_comment_id);
	 
	 if(articleComment.isPresent()) {
		 return articleComment.get();
	 }else {
		 return null;
	 }
		
	}

	@Override
	public List<ArticleComment> getAllArticleComment() {
		return acDao.findAll();
	}

}
