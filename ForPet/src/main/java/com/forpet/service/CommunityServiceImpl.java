package com.forpet.service;

import java.util.List;

import org.apache.ibatis.session.RowBounds;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.forpet.dao.CommunityDao;
import com.forpet.model.vo.BoardSearch;
import com.forpet.model.vo.Member;
import com.forpet.model.vo.MemberFriend;
import com.forpet.model.vo.MemberMsg;

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

	@Override
	public int mmCount(MemberMsg mm) {
		return dao.mmCount(mm);
	}

	@Override
	public List<MemberMsg> mmSelectList(MemberMsg mm, BoardSearch bs) {
		return dao.mmSelectList(mm, bs);
	}

	@Override
	public MemberMsg mmSelectOne(MemberMsg mm) {
		return dao.mmSelectOne(mm);
	}

	@Override
	public int insertMsg(MemberMsg mm) {
		return dao.insertMsg(mm);
	}

	@Override
	public int delMsg(MemberMsg mm) {
		return dao.delMsg(mm);
	}

	@Override
	public int mmUpdateRead(MemberMsg mm) {
		return dao.mmUpdateRead(mm);
	}
	
}
