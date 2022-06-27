package com.group1project.model.service;

import java.util.List;

import org.springframework.data.domain.Page;

import com.group1project.model.bean.Guide;

public interface GuideService {

	Guide saveGuide(Guide guide);
	Guide getGuideById(int loginId);
	List<Guide> getAllGuide();
	void deleteGuideById(int loginId);
	Page<Guide> findByPage(Integer pageNumber);
	
}
