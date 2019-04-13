package com.forpet.dao;

import java.util.List;

import com.forpet.model.vo.BoardSearch;
import com.forpet.model.vo.HealthInfo;

public interface HealthDao {

	int healthCount(BoardSearch bs);

	List<HealthInfo> healthList(BoardSearch bs);

}
