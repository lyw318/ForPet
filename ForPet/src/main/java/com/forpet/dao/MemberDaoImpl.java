package com.forpet.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.forpet.model.vo.Member;

@Repository
public class MemberDaoImpl implements MemberDao {

	@Autowired
	private SqlSessionTemplate session;

	
	
	
	

	@Override
	public int insertKakaoMember(int memberSeq, String kakaoId) {
		Map m=new HashMap();
		m.put("kakaoId", kakaoId);
		m.put("memberSeq", memberSeq);
		return session.insert("member.insertKakaoMember",m);
	}

	@Override
	public int insertAddInfo(Member m) {
		// TODO Auto-generated method stub
		return session.insert("member.insertAddInfo",m);
	}

	@Override
	public int insertUserAuth(String memberEmail, String key) {
		// TODO Auto-generated method stub
		Map m=new HashMap();
		m.put("memberEmail", memberEmail);
		m.put("authKey", key);
		return session.insert("member.insertUserAuth",m);
	}

	@Override
	public int updateUserAuth(String memberEmail, String key) {
		// TODO Auto-generated method stub
		Map m=new HashMap();
		m.put("memberEmail", memberEmail);
		m.put("authKey", key);
		return session.update("member.updateUserAuth",m);
	}

	

	@Override
	public String selectCountUserAuth(String memberEmail) {
		// TODO Auto-generated method stub
		return session.selectOne("member.selectCountUserAuth",memberEmail);
	}

	@Override
	public Member selectOne(Member m) {
		return session.selectOne("member.selectOne",m);
	}

	@Override
	public Member selectByNickname(Member m) {
		// TODO Auto-generated method stub
		return session.selectOne("member.selectByNickname",m);
	}

	@Override
	public int insertMember(Member m) {
		// TODO Auto-generated method stub
		return session.insert("member.insertMember",m);
	}

	@Override
	public int update(Member m) {
		// TODO Auto-generated method stub
		return session.update("member.update",m);
	}

	//회원탈퇴
	@Override
	public int delete(Member m) {
		// TODO Auto-generated method stub
		return session.update("member.delete",m);
	}

	@Override
	public Map<String, String> selectKakao(String kakaoId) {
		// TODO Auto-generated method stub
		return session.selectOne("member.selectKakao",kakaoId);
	}
	
	
	
	
}
