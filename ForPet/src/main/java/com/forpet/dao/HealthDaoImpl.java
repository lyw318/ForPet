package com.forpet.dao;

import java.util.List;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.forpet.model.vo.BoardSearch;
import com.forpet.model.vo.HealthInfo;

@Repository
public class HealthDaoImpl implements HealthDao {

	@Autowired
	private SqlSessionTemplate session;

	@Override
	public int healthCount(BoardSearch bs) {
		return session.selectOne("health.healthCount",bs);
	}

	@Override
	public List<HealthInfo> healthList(BoardSearch bs) {
		RowBounds row=new RowBounds((bs.getcPageNo()-1)*bs.getNumPerPageNo(), bs.getNumPerPageNo());
		return session.selectList("health.healthList",bs,row);
	}
	
	
}
