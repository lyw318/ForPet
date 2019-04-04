package com.forpet.dao;

import java.util.List;

import com.forpet.model.vo.Member;
import com.forpet.model.vo.MemberFriend;

public interface CommunityDao {

	List<MemberFriend> selectList();
	List<MemberFriend> inSelectList(MemberFriend mf);
	List<MemberFriend> blSelectList(MemberFriend mf);
	MemberFriend selectOne(MemberFriend mf);
	Member mSelectOne(Member m);
	int insertFriend(MemberFriend m);
	int delFriend(MemberFriend mf);
	int updateTypeFriend(MemberFriend mf);
}
