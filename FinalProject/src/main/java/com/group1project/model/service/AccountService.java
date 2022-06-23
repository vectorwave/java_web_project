package com.group1project.model.service;

import java.util.List;

import com.group1project.model.bean.Account;

public interface AccountService {
	Account saveAccount(Account account);
	Account getAccountById(Integer accountId);
	List<Account> getAllAccount();
	void deleteAccount(Integer accountId);
	
}
