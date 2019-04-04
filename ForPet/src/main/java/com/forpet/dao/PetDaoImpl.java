package com.forpet.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.forpet.model.vo.Pet;
@Repository
public class PetDaoImpl implements PetDao {

	@Autowired
	private SqlSessionTemplate session;
	
	@Override
	public int insertPet(Pet p) {
		// TODO Auto-generated method stub
		return session.insert("pet.insertPet",p);
	}

}
