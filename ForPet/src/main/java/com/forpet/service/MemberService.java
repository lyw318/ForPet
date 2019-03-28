package com.forpet.service;

import com.forpet.model.vo.Member;

public interface MemberService {

	Member selectOne(Member m);

	int insertMember(Member m);

}
