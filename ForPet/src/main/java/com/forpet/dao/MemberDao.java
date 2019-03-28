package com.forpet.dao;

import com.forpet.model.vo.Member;

public interface MemberDao {

	Member selectOne(Member m);

	int insertMember(Member m);

}
