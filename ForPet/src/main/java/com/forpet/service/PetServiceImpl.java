package com.forpet.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.forpet.dao.PetDao;
import com.forpet.model.vo.Member;
import com.forpet.model.vo.Pet;

@Service
public class PetServiceImpl implements PetService {

	@Autowired
	private PetDao dao;
	
	
	
	@Override
	public Pet selectOne(int id) {
		return dao.selectOne(id);
	}


	@Override
	public int updatePet(Pet p) {
		// TODO Auto-generated method stub
		return dao.update(p);
	}


	@Override
	public int insertPet(Pet p) {
		// TODO Auto-generated method stub
		return dao.insertPet(p);
	}

	
	@Override
	public List<Pet> selectList(Member m) {
		// TODO Auto-generated method stub
		return dao.selectList(m);
	}


	@Override
	public int delete(int petSeq) {
		// TODO Auto-generated method stub
		return dao.deletePet(petSeq);
	}


	


	
	

}
