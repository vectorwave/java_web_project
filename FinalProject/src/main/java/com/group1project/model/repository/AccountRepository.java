package com.group1project.model.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.group1project.model.bean.Account;
import com.group1project.model.bean.Product;
@Repository
public interface AccountRepository extends JpaRepository<Account, Integer>{
	
	@Query(value="select * from login_info where account_name= :accountName and password= :Password", nativeQuery = true)
	public Account findByAccPwd(@Param(value="accountName") String accountName,@Param(value="Password") String Password);

	public List<Account> findAllByAccountNameLike(String key);

//	public String findByAccountName(String userName);

}
