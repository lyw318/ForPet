package com.forpet.dao;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import com.forpet.model.vo.Vet;

public interface VetDao {

	List <Vet>VetList();

	int selectCount(Map map);
	List<Vet> selectList(int cPage, int numPerPage, Map map);

	Vet selectVet(int vetSeq);
	List selectVetCate(int vetSeq);
	List selectVetServ(int vetSeq);

	int addScrap(Map scrap);

	int selectScrap(Map checkScrap);

}
