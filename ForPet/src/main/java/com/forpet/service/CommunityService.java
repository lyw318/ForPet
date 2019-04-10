package com.forpet.service;

import java.util.List;

import com.forpet.model.vo.Member;
import com.forpet.model.vo.MemberFriend;
import com.forpet.model.vo.MemberMsg;

public interface CommunityService {

	List<MemberFriend> selectList();
	List<MemberFriend> inSelectList(MemberFriend mf);
	List<MemberFriend> blSelectList(MemberFriend mf);
	MemberFriend selectOne(MemberFriend mf);
	Member mSelectOne(Member m);
	int insertFriend(MemberFriend mf);
	int delFriend(MemberFriend mf);
	int updateTypeFriend(MemberFriend mf);
	List<MemberMsg> mmSelectList(MemberMsg mm);
	int insertMsg(MemberMsg mm);
	int delMsg(MemberMsg mm);
}
