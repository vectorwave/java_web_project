package com.group1project.model.service.impl;

import java.util.List;
import java.util.Optional;

import javax.persistence.EntityManager;
import javax.persistence.NoResultException;
import javax.persistence.TypedQuery;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.group1project.model.bean.Account;
import com.group1project.model.repository.AccountRepository;
import com.group1project.model.service.AccountService;

@Service
public class AccountServiceimpl implements AccountService {

	@Autowired
	private EntityManager entityManager;

	@Autowired
	private AccountRepository aDao;
	
	private AccountService aService;

	@Override
	public Account saveAccount(Account account) {
		return aDao.save(account);
	}

	@Override
	public Account getAccountById(Integer accountId) {
		Optional<Account> account = aDao.findById(accountId);

		if (account.isPresent()) {
			return account.get();
		} else {
			return null;
		}
	}

	@Override
	public List<Account> getAllAccount() {
		return aDao.findAll();
	}

	@Override
	public void deleteAccount(Integer accountId) {
		aDao.deleteById(accountId);

	}

//	@Override
//	public Account getAccountByName(String account) {
//		String hql = "FROM Account a WHERE a.account=:inputAccount";
//		TypedQuery<Account> query = entityManager.createQuery(hql, Account.class);
//		query.setParameter("inputAccount", account);
//		
//		Account acc = null;
//		try {
//			acc = query.getSingleResult();
//		}catch(NoResultException e) {
//			return null;
//		}
//		return acc;
//	}

	@Override
	public Account findByAccPwd(String accountName, String Password) {
		Account user = aDao.findByAccPwd(accountName, Password);
		if (user != null) {
			return user;
		}
		return null;
	}

	@Override
	public List<Account> searchAccountByName(String key) {
		
		return aDao.findAllByAccountNameLike("%" + key + "%");
		
	}

	@Override
	public String findIdByName(String accountName) {

		String user = aService.findIdByName(accountName);
		if(accountName.isBlank()) {
			return null;
		}
		return user;
	}
	




//	@Override
//	public Account updateById2(Integer accountId, String password) {
//		Account account = entityManager.find(Account.class, accountId);
//		if (account != null) {
//			account.setPassword(password);
//		}
//		return account;
//	}	

}
