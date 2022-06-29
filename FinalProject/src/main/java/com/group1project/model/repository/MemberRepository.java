package com.group1project.model.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.group1project.model.bean.Member;

public interface MemberRepository extends JpaRepository<Member, Integer> {
	public List<Member> findAllByMemberNameLike(String key);

}
