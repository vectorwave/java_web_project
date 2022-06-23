package com.group1project.model.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.group1project.model.bean.Guide;

public interface GuideRepository extends JpaRepository<Guide, Integer> {

}
