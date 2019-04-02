package com.forpet.service;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Service;

import com.forpet.model.vo.Vet;

public interface VetService {

	public List VetList();

	public int selectCount(Map map);

	public List<Vet> selectList(int cPage, int numPerPage, Map map);
}
