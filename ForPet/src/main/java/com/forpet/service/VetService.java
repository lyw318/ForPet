package com.forpet.service;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Service;

import com.forpet.model.vo.Member;
import com.forpet.model.vo.Vet;

public interface VetService {

	public List VetList();
	public int selectCount(Map map);
	public List<Vet> selectList(int cPage, int numPerPage, Map map);

	public Vet selectVet(int vetSeq);
	public List selectVetCate(int vetSeq);
	public List selectVetServ(int vetSeq);
	public int addScrap(Map scrap);
	public int selectScrap(Map<String, Integer> checkScrape);
	public List selectVetList(Member m);
	public int deleteScrap(Map<String, Integer> scrap);
}
