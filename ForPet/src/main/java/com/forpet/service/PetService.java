package com.forpet.service;

import java.util.List;

import com.forpet.model.vo.Member;
import com.forpet.model.vo.Pet;

public interface PetService {

	int insertPet(Pet p);
	List<Pet> selectList(Member m);
	Pet selectOne(int id);
	int updatePet(Pet p);
	
	int delete(int petSeq);
	

}
