package com.forpet.service;

import java.util.List;

import com.forpet.model.vo.Member;

public interface MemberService {

	Member selectOne(Member m);

	int insertMember(Member m);

	int update(Member m);

	int delete(Member m);

	Member kakaoSelectOne(String kakaoId);

	Member selectByNickname(Member m);

	int insertUserAuth(String memberEmail, String key);

	int updateUserAuth(String memberEmail, String key);

	String selectCountUserAuth(String memberEmail);

	int insertAddInfo(Member m,String kakaoId) throws RuntimeException;

	

	

	

	

}
