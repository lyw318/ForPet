package com.forpet.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.forpet.dao.MemberDao;
import com.forpet.model.vo.Member;

@Service
public class MemberServiceImpl implements MemberService {

	@Autowired
	private MemberDao dao;

	@Override
	public Member selectOne(Member m) {
		return dao.selectOne(m);
	}

	@Override
	public int insertMember(Member m) {
		// TODO Auto-generated method stub
		return dao.insertMember(m);
	}

	@Override
	public int update(Member m) {
		// TODO Auto-generated method stub
		return dao.update(m);
	}

	@Override
	public int delete(Member m) {
		// TODO Auto-generated method stub
		return dao.delete(m);
	}

	
	
	
	
}
