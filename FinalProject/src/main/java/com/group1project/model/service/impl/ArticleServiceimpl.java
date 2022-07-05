package com.group1project.model.service.impl;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;

import com.group1project.model.bean.Article;
import com.group1project.model.bean.Product;
import com.group1project.model.repository.ArticleRepository;
import com.group1project.model.service.ArticleService;

@Service
public  class ArticleServiceimpl implements ArticleService {
	
	
	@Autowired private ArticleRepository aDao;
	
	@Override
	public Article saveArticle(Article article) {
		return  aDao.save(article);
	}
	
	@Autowired
	public ArticleServiceimpl(ArticleRepository aDao) {
		super();
		this.aDao = aDao;
	}

	@Override
	public void deleteArticle(int articleId) {
		aDao.deleteById(articleId);
	}


	@Override
	public Article getArticleById(int articleId) {
	 Optional<Article> article = aDao.findById(articleId);
	 
	 if(article.isPresent()) {
		 return article.get();
	 }else {
		 return null;
	 }
		
	}

	@Override
	public List<Article> getAllArticle() {
		return aDao.findAll();
	}
	
	public Page<Article> findByPage(Integer pageNumber){
		Pageable pgb = PageRequest.of(pageNumber-1, 6 ,Sort.Direction.DESC ,"articleId");
		
		Page<Article> page = aDao.findAll(pgb);
		
		return page;
		
	}
	
	public Page<Article> searchArticleByTitleWithPage(String key , Pageable pab) {
		   return aDao.findAllByArticleTitleLike("%" + key + "%", pab);
	}
	public Page<Article> searchArticleByCategoryWithPage(String key , Pageable pab) {
		   return aDao.findAllByArticleCategoryLike("%" + key + "%", pab);
	}
//	@Override
//	public int[] countArticleCatagory() {
//		
//		String shareNum="分享"; 
//		String promoNum="廣告"; 
//		String dislikeNum="反推"; 
//
//		
//		
//		return null;
//		
//		
//	};
}
