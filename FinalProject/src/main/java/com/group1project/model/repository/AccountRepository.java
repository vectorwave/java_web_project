package com.group1project.model.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.group1project.model.bean.Account;
@Repository
public interface AccountRepository extends JpaRepository<Account, Integer>{
	
	@Query(value="select * from login_info where account_name= :accountName and password= :Password", nativeQuery = true)
	public Account findByAccPwd(@Param(value="accountName") String accountName,@Param(value="Password") String Password);

	@Query(value="select account_id from login_info where accountName like '%'+:accountName+'%'", nativeQuery = true)
	public String findIdByName(@Param(value="accountName") String accountName);
}
