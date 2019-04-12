package com.forpet.dao;

import java.util.List;

import com.forpet.model.vo.Member;

public interface AdminDao {

	List<Member> selectList(Member m);
	List<Member> selectDeleteList(Member m);
	int selectCount();
	List<Member> selectList(int cPage, int numPerPage);
	
	
}
