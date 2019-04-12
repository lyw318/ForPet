package com.forpet.dao;

import java.util.List;
import java.util.Map;

import com.forpet.model.vo.Member;

public interface MemberDao {

	Member selectOne(Member m);

	int insertMember(Member m);

	int update(Member m);

	int delete(Member m);

	Map<String, String> selectKakao(String kakaoId);

	Member selectByNickname(Member m);

	int insertUserAuth(String memberEmail, String key);

	int updateUserAuth(String memberEmail, String key);

	String selectCountUserAuth(String memberEmail);

	int insertAddInfo(Member m);

	int insertKakaoMember(int memberSeq, String kakaoId);

	


}
