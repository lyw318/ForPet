package com.forpet.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.forpet.model.vo.Vet;

@Repository
public class VetDaoImpl implements VetDao {

	@Autowired
	private SqlSessionTemplate session;

	@Override
	public List<Vet> VetList() {
		
		return session.selectList("vet.vetList");
	}

}
