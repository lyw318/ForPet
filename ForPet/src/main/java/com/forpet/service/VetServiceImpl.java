package com.forpet.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.forpet.dao.VetDao;
import com.forpet.model.vo.Member;
import com.forpet.model.vo.Vet;

@Service
public class VetServiceImpl implements VetService {

	@Autowired
	private VetDao dao;
	
	@Override
	public List VetList() {

		return dao.VetList();
	}

	@Override
	public int selectCount(Map map) {
		return dao.selectCount(map);
	}

	@Override
	public List<Vet> selectList(int cPage, int numPerPage, Map map) {

		return dao.selectList(cPage, numPerPage, map);
	}

	@Override
	public Vet selectVet(int vetSeq) {
	
		return dao.selectVet(vetSeq);
	}

	@Override
	public List selectVetCate(int vetSeq) {
	
		return dao.selectVetCate(vetSeq);
	}

	@Override
	public List selectVetServ(int vetSeq) {
		
		return dao.selectVetServ(vetSeq);
	}

	@Override
	public int addScrap(Map scrap) {

		return dao.addScrap(scrap);
	}

	@Override
	public int selectScrap(Map checkScrap) {
		
		return dao.selectScrap(checkScrap);
	}

	@Override
	public List selectVetList(Member m) {
		
		return dao.selectVetList(m);
	}

}
