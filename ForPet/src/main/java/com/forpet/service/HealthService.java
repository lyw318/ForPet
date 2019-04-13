package com.forpet.service;

import java.util.List;

import com.forpet.model.vo.BoardSearch;
import com.forpet.model.vo.HealthInfo;
import com.forpet.model.vo.Image;

public interface HealthService {

	int healthCount(BoardSearch bs);
	List<HealthInfo> healthList(BoardSearch bs);
	int insertInfo(HealthInfo hi, List<Image> list) throws RuntimeException;

}
