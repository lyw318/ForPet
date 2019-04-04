package com.forpet.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.forpet.dao.CommunityDao;
import com.forpet.model.vo.Member;
import com.forpet.model.vo.MemberFriend;

@Service
public class CommunityServiceImpl implements CommunityService {

	@Autowired
	private CommunityDao dao;

	@Override
	public List<MemberFriend> selectList() {
		return dao.selectList();
	}

	@Override
	public List<MemberFriend> inSelectList(MemberFriend mf) {
		return dao.inSelectList(mf);
	}

	@Override
	public List<MemberFriend> blSelectList(MemberFriend mf) {
		return dao.blSelectList(mf);
	}

	@Override
	public MemberFriend selectOne(MemberFriend mf) {
		return dao.selectOne(mf);
	}

	@Override
	public Member mSelectOne(Member m) {
		return dao.mSelectOne(m);
	}

	@Override
	public int insertFriend(MemberFriend mf) {
		return dao.insertFriend(mf);
	}

	@Override
	public int delFriend(MemberFriend mf) {
		return dao.delFriend(mf);
	}

	@Override
	public int updateTypeFriend(MemberFriend mf) {
		return dao.updateTypeFriend(mf);
	}
	
}
