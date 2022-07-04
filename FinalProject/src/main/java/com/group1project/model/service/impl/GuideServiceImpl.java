package com.group1project.model.service.impl;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;

import com.group1project.model.bean.Guide;
import com.group1project.model.repository.GuideRepository;
import com.group1project.model.service.GuideService;

@Service
public class GuideServiceImpl implements GuideService {

	private GuideRepository gDao;
	
	@Autowired
	public GuideServiceImpl(GuideRepository gDao) {
		super();
		this.gDao = gDao;
	}

	//新增導遊
	@Override
	public Guide saveGuide(Guide guide) {
		return gDao.save(guide);
	}

	//單筆查詢
	@Override
	public Guide getGuideById(Integer accountId) {
		Optional<Guide> guide = gDao.findById(accountId);
		
		if(guide.isPresent()) return guide.get();
		
		return null;
	}

	//查詢全部
	@Override
	public List<Guide> getAllGuide() {
		return gDao.findAll();
	}
	
	

	//透過ID刪除
	@Override
	public void deleteGuideById(Integer accountId) {
		gDao.deleteById(accountId);
	}

	
	//page 物件
	@Override
	public Page<Guide> findByPage(Integer pageNumber) {
		Pageable pgb = PageRequest.of(pageNumber-1 ,5 , Sort.Direction.ASC,"accountId");
		Page<Guide> page = gDao.findAll(pgb);
		return page;
	}

	//搜尋功能
	@Override
	public List<Guide> searchGuideByProfileName(String key) {
		return  gDao.findAllByProfileNameLike("%" + key + "%");
	}
	

}
