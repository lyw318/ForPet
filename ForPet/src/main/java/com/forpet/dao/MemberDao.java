package com.forpet.dao;

import java.util.Map;

import com.forpet.model.vo.Member;

public interface MemberDao {

	Member selectOne(Member m);

	int insertMember(Member m);

	int update(Member m);

	int delete(Member m);

	Map<String, String> selectKakao(String kakaoId);

	Member selectByNickname(Member m);

}
