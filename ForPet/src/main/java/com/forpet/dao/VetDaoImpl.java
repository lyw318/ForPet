package com.forpet.dao;

import java.util.Map;
import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.RowBounds;
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

	@Override
	public int selectCount(Map map) {
		
		
	
		return session.selectOne("vet.selectCount",map);
	}

	@Override
	public List<Vet> selectList(int cPage, int numPerPage, Map map) {
				
		return session.selectList("vet.selectList",map, new RowBounds((cPage-1)*numPerPage, numPerPage));
	}

	
	
	
}
