package com.group1project.model.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.group1project.model.bean.Account;
@Service
public interface AccountService {
	Account saveAccount(Account account);
	Account getAccountById(Integer accountId);
	List<Account> getAllAccount();
	void deleteAccount(Integer accountId);	
//	Account getAccountByName(String account);
	public Account findByAccPwd(String accountName, String Password);
//	Account updateById2(Integer accountId, String password);
	public String findIdByName(String userName);

}
