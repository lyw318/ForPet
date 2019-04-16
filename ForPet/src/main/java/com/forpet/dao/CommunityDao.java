package com.forpet.dao;

import java.util.List;

import com.forpet.model.vo.BoardSearch;
import com.forpet.model.vo.Member;
import com.forpet.model.vo.MemberFriend;
import com.forpet.model.vo.MemberMsg;

public interface CommunityDao {

	List<MemberFriend> selectList();
	List<MemberFriend> inSelectList(MemberFriend mf);
	List<MemberFriend> blSelectList(MemberFriend mf);
	MemberFriend selectOne(MemberFriend mf);
	Member mSelectOne(Member m);
	int insertFriend(MemberFriend m);
	int delFriend(MemberFriend mf);
	int updateTypeFriend(MemberFriend mf);
	int mmCount(MemberMsg mm);
	List<MemberMsg> mmSelectList(MemberMsg mm, BoardSearch bs);
	MemberMsg mmSelectOne(MemberMsg mm);
	int insertMsg(MemberMsg mm);
	int delMsg(MemberMsg mm);
	int mmUpdateRead(MemberMsg mm);
	int mmUpdateType(MemberMsg mm);
}
