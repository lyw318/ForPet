package com.forpet.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.forpet.dao.AdminDao;
import com.forpet.model.vo.Member;
@Service
public class AdminServiceImpl implements AdminService {

	@Autowired
	private AdminDao dao;
	
	@Override
	public List<Member> selectList(Member m) {
		// TODO Auto-generated method stub
		return dao.selectList(m);
	}

	@Override
	public List<Member> selectDeleteList(Member m) {
		// TODO Auto-generated method stub
		return dao.selectDeleteList(m);
	}

	@Override
	public int selectCount() {
		// TODO Auto-generated method stub
		return dao.selectCount();
	}

	@Override
	public List<Member> selectList(int cPage, int numPerPage) {
		// TODO Auto-generated method stub
		return dao.selectList(cPage,numPerPage);
	}

	@Override
	public int delete(Member m) {
		// TODO Auto-generated method stub
		return dao.delete(m);
	}

	
	
	

}
