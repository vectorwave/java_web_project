package com.group1project.model.service;

import java.util.List;

import org.springframework.data.domain.Page;

import com.group1project.model.bean.Account;
import com.group1project.model.bean.Guide;

public interface GuideService {

	Guide saveGuide(Guide guide);
	Guide getGuideById(Integer accountId);
	List<Guide> getAllGuide();
	void deleteGuideById(Integer accountId);
	Page<Guide> findByPage(Integer pageNumber);
	List<Guide> searchGuideByProfileName(String key);
	Page<Guide> findByPage2(Integer pageNumber);
	
}
