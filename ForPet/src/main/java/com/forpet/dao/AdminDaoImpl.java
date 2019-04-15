package com.forpet.dao;

import java.util.List;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.forpet.model.vo.Member;
@Repository
public class AdminDaoImpl implements AdminDao {

	@Autowired
	private SqlSessionTemplate session;
	
	@Override
	public List<Member> selectList(Member m) {
		// TODO Auto-generated method stub
		return session.selectList("admin.selectList",m);
	}

	@Override
	public List<Member> selectDeleteList(Member m) {
		// TODO Auto-generated method stub
		return session.selectList("admin.selectDeleteList",m);
	}

	@Override
	public int selectCount() {
		// TODO Auto-generated method stub
		return session.selectOne("admin.selectCount");
	}

	@Override
	public List<Member> selectList(int cPage, int numPerPage) {
		// TODO Auto-generated method stub
		RowBounds row=new RowBounds((cPage-1)*numPerPage,numPerPage);
		return session.selectList("admin.selectList",null,row);
	}

	@Override
	public int delete(Member m) {
		// TODO Auto-generated method stub
		return session.delete("admin.delete",m);
	}

	
	



}
