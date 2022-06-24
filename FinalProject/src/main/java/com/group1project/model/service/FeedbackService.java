package com.group1project.model.service;

import java.util.List;

import org.springframework.data.domain.Page;

import com.group1project.model.bean.Feedback;


public interface FeedbackService {

	Feedback saveFeedback(Feedback feedback);
	Feedback getFeedbackById(int feedback_id);
	List<Feedback> getAllFeedback();
	void deleteFeedback(int feedback_id);
	Page<Feedback> findByPage(Integer pageNumber);
	
}
