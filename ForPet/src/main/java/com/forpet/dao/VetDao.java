package com.forpet.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.forpet.model.vo.Vet;

public interface VetDao {

	List <Vet>VetList();
}
