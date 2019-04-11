package com.forpet.dao;

import java.util.List;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.forpet.model.vo.BoardSearch;
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
	public int mmCount(MemberMsg mm) {
		return session.selectOne("community.mmCount", mm);
	}

	@Override
	public List<MemberMsg> mmSelectList(MemberMsg mm, BoardSearch bs) {
		RowBounds row = new RowBounds((bs.getcPageNo()-1)*bs.getNumPerPageNo(), bs.getNumPerPageNo());
		return session.selectList("community.mmSelectList", mm, row);
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
