package com.forpet.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.forpet.dao.HealthDao;
import com.forpet.model.vo.BoardSearch;
import com.forpet.model.vo.HealthInfo;

@Service
public class HealthServiceImpl implements HealthService {

	@Autowired
	private HealthDao dao;

	@Override
	public int healthCount(BoardSearch bs) {
		return dao.healthCount(bs);
	}

	@Override
	public List<HealthInfo> healthList(BoardSearch bs) {
		return dao.healthList(bs);
	}
	
}
