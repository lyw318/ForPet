package com.forpet.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.forpet.dao.VetDao;

@Service
public class VetServiceImpl implements VetService {

	@Autowired
	private VetDao dao;
	
	@Override
	public List VetList() {
		// TODO Auto-generated method stub
		return dao.VetList();
	}

}
