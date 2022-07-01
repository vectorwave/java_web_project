package com.group1project.model.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.group1project.model.bean.Account;
import com.group1project.model.bean.Member;


public interface MemberRepository extends JpaRepository<Member, Integer> {
	
	public List<Member> findAllByMemberNameLike(String key);
	// 
	@Query(value="select b.* from login_info a,member_info b "
			+ "where a.account_id = b.account_id "
			+ "and b.member_name LIKE CONCAT('%',:key,'%') and a.title='會員'", 
			nativeQuery = true)
	List<Member> findIdMembertitle(@Param(value="key") String key);

}
