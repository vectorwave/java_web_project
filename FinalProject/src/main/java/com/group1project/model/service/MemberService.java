package com.group1project.model.service;

import java.util.List;

import org.springframework.data.domain.Page;

import com.group1project.model.bean.Member;


public interface MemberService {
	Member saveMember(Member Member);
	Member getMemberById(Integer accountId);
	List<Member> getAllMember();
	void deleteMember(Integer accountId);
	Page<Member> findByPage(Integer pageNumber);
	
}
