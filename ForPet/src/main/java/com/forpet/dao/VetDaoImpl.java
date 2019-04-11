package com.forpet.dao;

import java.util.Map;
import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.forpet.model.vo.Member;
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

		return session.selectOne("vet.selectCount", map);
	}

	@Override
	public List<Vet> selectList(int cPage, int numPerPage, Map map) {

		return session.selectList("vet.selectList", map, new RowBounds((cPage - 1) * numPerPage, numPerPage));
	}

	@Override
	public Vet selectVet(int vetSeq) {

		return session.selectOne("vet.selectVet", vetSeq);
	}

	@Override
	public List selectVetCate(int vetSeq) {

		return session.selectList("vet.selectVetCate", vetSeq);
	}

	@Override
	public List selectVetServ(int vetSeq) {

		return session.selectList("vet.selectVetServ", vetSeq);
	}

	@Override
	public int addScrap(Map scrap) {

		return session.insert("vet.addScrap", scrap);
	}

	@Override
	public int selectScrap(Map checkScrap) {
	
		return session.selectOne("vet.checkScrap", checkScrap);
	}

	@Override
	public List selectVetList(Member m) {

		return session.selectList("vet.selectVetList", m);
	}


	}

