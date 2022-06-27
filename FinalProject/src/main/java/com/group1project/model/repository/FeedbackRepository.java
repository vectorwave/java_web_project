package com.group1project.model.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.group1project.model.bean.Feedback;

public interface FeedbackRepository extends JpaRepository<Feedback, Integer> {

}
