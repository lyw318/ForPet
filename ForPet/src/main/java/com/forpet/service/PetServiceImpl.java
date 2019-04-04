package com.forpet.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.forpet.dao.PetDao;
import com.forpet.model.vo.Pet;

@Service
public class PetServiceImpl implements PetService {

	@Autowired
	private PetDao dao;
	
	@Override
	public int insertPet(Pet p) {
		// TODO Auto-generated method stub
		return dao.insertPet(p);
	}

}
