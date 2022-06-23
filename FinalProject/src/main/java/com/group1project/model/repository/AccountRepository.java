package com.group1project.model.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.group1project.model.bean.Account;

public interface AccountRepository extends JpaRepository<Account, Integer>{
	

}
