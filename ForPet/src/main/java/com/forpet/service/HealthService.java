package com.forpet.service;

import java.util.List;

import com.forpet.model.vo.BoardSearch;
import com.forpet.model.vo.HealthInfo;

public interface HealthService {

	int healthCount(BoardSearch bs);
	List<HealthInfo> healthList(BoardSearch bs);

}
