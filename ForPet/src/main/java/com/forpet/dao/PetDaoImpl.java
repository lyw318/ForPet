package com.forpet.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.forpet.model.vo.Member;
import com.forpet.model.vo.Pet;
@Repository
public class PetDaoImpl implements PetDao {

	@Autowired
	private SqlSessionTemplate session;
	
	
	
	@Override
	public Pet selectOne(int id) {
		return session.selectOne("pet.selectOne",id);
	}

	@Override
	public int insertPet(Pet p) {
		// TODO Auto-generated method stub
		return session.insert("pet.insertPet",p);
	}

	@Override
	public List<Pet> selectList(Member m) {
		// TODO Auto-generated method stub
		return session.selectList("pet.selectList",m);
	}

	@Override
	public int update(Pet p) {
		// TODO Auto-generated method stub
		return session.update("pet.update",p);
	}

	@Override
	public int deletePet(int petSeq) {
		// TODO Auto-generated method stub
		return session.delete("pet.delete",petSeq);
	}

	

	
	

	
}
