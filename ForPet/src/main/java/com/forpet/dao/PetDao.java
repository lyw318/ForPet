package com.forpet.dao;

import java.util.List;

import com.forpet.model.vo.Member;
import com.forpet.model.vo.Pet;

public interface PetDao {

	int insertPet(Pet p);

	List<Pet> selectList(Member m);
	Pet selectOne(int id);

	int update(Pet p);

	

	int deletePet(int petSeq);
	

}
