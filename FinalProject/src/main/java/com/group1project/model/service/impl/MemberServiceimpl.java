package com.group1project.model.service.impl;

import java.util.List;
import java.util.Optional;

import javax.persistence.EntityManager;
import javax.persistence.NoResultException;
import javax.persistence.TypedQuery;
import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;

import com.group1project.model.bean.Account;
import com.group1project.model.bean.Member;
import com.group1project.model.repository.MemberRepository;
import com.group1project.model.service.MemberService;

@Service
@Transactional
public class MemberServiceimpl implements MemberService {
	@Autowired
	private MemberRepository mDao;

	@Autowired
	private EntityManager entityManager;

	@Autowired
	public MemberServiceimpl(MemberRepository mDao) {
		super();
		this.mDao = mDao;
	}

	@Override
	public Member saveMember(Member member) {
		return mDao.save(member);
	}

	@Override
	public Member getMemberById(Integer memberid) {
		Optional<Member> member = mDao.findById(memberid);

		if (member.isPresent()) {
			return member.get();
		} else {
			return null;
		}

	}

	@Override
	public Member getMemberByAccountId(Integer accountId) {

		String hql = "from Member where account_id = :accountId";

		TypedQuery<Member> query = entityManager.createQuery(hql, Member.class);
		query.setParameter("accountId", accountId);
		
		Member member = null;
		
		try {
			member = query.getSingleResult();
		}catch (NoResultException e) {
			return null;
		}
		return member;
	}

	@Override
	public List<Member> getAllMember() {
		return mDao.findAll();
	}

	@Override
	public void deleteMember(Integer memberId) {
		mDao.deleteById(memberId);
//		String hql = "from Member where account_id = :accountId";
//		
//		TypedQuery<Member> query = entityManager.createQuery(hql,Member.class);
//		query.setParameter("accountId", accountId);	
//		 
//		Member member = query.getSingleResult();
//		if(member != null) {
//			mDao.deleteById(member.getMemberId());
//		 }
	}

	@Override
	public Page<Member> findByPage(Integer pageNumber) {
		Pageable pgb = PageRequest.of(pageNumber - 1, 4, Sort.Direction.DESC, "memberid");

		Page<Member> page = mDao.findAll(pgb);
		return page;
	}

	@Override
	public List<Member> searchMemberByName(String key) {

		return mDao.findAllByMemberNameLike("%" + key + "%");
	}

	@Override
	public List<Member> findIdMembertitle(String key) {
		return mDao.findIdMembertitle(key);
	}

}
