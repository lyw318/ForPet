package com.forpet.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.forpet.dao.VetDao;
import com.forpet.model.vo.Vet;

@Service
public class VetServiceImpl implements VetService {

	@Autowired
	private VetDao dao;
	
	@Override
	public List VetList() {
		// TODO Auto-generated method stub
		return dao.VetList();
	}

	@Override
	public int selectCount(Map map) {
		// TODO Auto-generated method stub
		return dao.selectCount(map);
	}

	@Override
	public List<Vet> selectList(int cPage, int numPerPage, Map map) {
		// TODO Auto-generated method stub
		return dao.selectList(cPage, numPerPage, map);
	}

}
