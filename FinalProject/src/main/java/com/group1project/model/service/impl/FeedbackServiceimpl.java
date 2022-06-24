package com.group1project.model.service.impl;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;

import com.group1project.model.bean.Feedback;

import com.group1project.model.repository.FeedbackRepository;

import com.group1project.model.service.FeedbackService;


@Service
public class FeedbackServiceimpl implements FeedbackService {
	
	
	private FeedbackRepository fDao;
	
	@Autowired
	public FeedbackServiceimpl(FeedbackRepository fDao) {
		super();
		this.fDao = fDao;
	}
	
	@Override
	public Feedback saveFeedback(Feedback feedback) {
		return  fDao.save(feedback);
	}
	
	

	@Override
	public void deleteFeedback(int feedbackId) {
		fDao.deleteById(feedbackId);
	}


	@Override
	public Feedback  getFeedbackById(int feedbackId) {
	 Optional<Feedback> feedback = fDao.findById(feedbackId);
	 
	 if(feedback.isPresent()) {
		 return feedback.get();
	 }else {
		 return null;
	 }
		
	}

	@Override
	public List<Feedback> getAllFeedback() {
		return fDao.findAll();
	}

	

	@Override
	public Page<Feedback> findByPage(Integer pageNumber) {
		   Pageable pgb = PageRequest.of(pageNumber - 1, 4 ,Sort.Direction.DESC,"feedbackId");
		   
		   Page<Feedback> page = fDao.findAll(pgb);
		   
		   return page;
		  }
	

}
