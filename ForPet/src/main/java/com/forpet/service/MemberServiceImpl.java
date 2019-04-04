package com.forpet.service;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

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
	public Member selectByNickname(Member m) {
		// TODO Auto-generated method stub
		return dao.selectByNickname(m);
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

	@Override
	@Transactional(rollbackFor=Exception.class)
	public Member kakaoSelectOne(String kakaoId) {
		Map<String, String> result=dao.selectKakao(kakaoId);
		if(result==null) {
			return null;
		}
		else {
			Member m=new Member();
			m.setMemberEmail(result.get("MEMBEREMAIL"));
			return dao.selectOne(m);
		}
		
	}

	
	
	
	
}
