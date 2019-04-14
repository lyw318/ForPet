package com.forpet.dao;

import java.util.List;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.forpet.model.vo.BoardSearch;
import com.forpet.model.vo.HealthInfo;
import com.forpet.model.vo.Image;

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

	@Override
	public int insertInfo(HealthInfo hi) {
		return session.insert("health.insertInfo", hi);
	}

	@Override
	public int insertInfoImage(Image i) {
		return session.insert("health.insertInfoImage", i);
	}

	@Override
	public HealthInfo selectOne(int no) {
		return session.selectOne("health.selectOne", no);
	}

	@Override
	public List<String> infoImageList(int no) {
		return session.selectList("health.infoImageList", no);
	}

	@Override
	public int deleteInfoImage(String string) {
		return session.delete("health.deleteInfoImage", string);
	}

	@Override
	public int deleteInfo(int infoSeq) {
		return session.delete("health.deleteInfo", infoSeq);
	}
	
	
	
}
