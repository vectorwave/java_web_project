package com.group1project.model.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.group1project.model.bean.Account;
import com.group1project.model.bean.Guide;

public interface GuideRepository extends JpaRepository<Guide, Integer> {


	public List<Guide> findAllByProfileNameLike(String key);
	
}
