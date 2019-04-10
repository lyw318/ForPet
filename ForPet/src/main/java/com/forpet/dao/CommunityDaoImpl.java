package com.forpet.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.forpet.model.vo.Member;
import com.forpet.model.vo.MemberFriend;
import com.forpet.model.vo.MemberMsg;

@Repository
public class CommunityDaoImpl implements CommunityDao {

	@Autowired
	private SqlSessionTemplate session;
	
	@Override
	public List<MemberFriend> selectList() {
		return session.selectList("community.selectList");
	}

	@Override
	public List<MemberFriend> inSelectList(MemberFriend mf) {
		return session.selectList("community.inSelectList", mf);
	}

	@Override
	public List<MemberFriend> blSelectList(MemberFriend mf) {
		return session.selectList("community.blSelectList", mf);
	}

	@Override
	public MemberFriend selectOne(MemberFriend mf) {
		return session.selectOne("community.selectOne", mf);
	}

	@Override
	public Member mSelectOne(Member m) {
		return session.selectOne("community.mSelectOne", m);
	}

	@Override
	public int insertFriend(MemberFriend mf) {
		return session.insert("community.insertFriend", mf);
	}

	@Override
	public int delFriend(MemberFriend mf) {
		return session.delete("community.delFriend", mf);
	}

	@Override
	public int updateTypeFriend(MemberFriend mf) {
		return session.update("community.updateTypeFriend", mf);
	}

	@Override
	public List<MemberMsg> mmSelectList(MemberMsg mm) {
		return session.selectList("community.mmSelectList", mm);
	}

	@Override
	public int insertMsg(MemberMsg mm) {
		return session.insert("community.insertMsg", mm);
	}

	@Override
	public int delMsg(MemberMsg mm) {
		return session.delete("community.delMsg", mm);
	}
	
}
