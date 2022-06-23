package com.group1project.model.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.group1project.model.bean.Member;

public interface MemberRepository extends JpaRepository<Member,Integer> {

}
