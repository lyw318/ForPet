package com.forpet.dao;

import java.util.List;

import com.forpet.model.vo.BoardSearch;
import com.forpet.model.vo.HealthInfo;
import com.forpet.model.vo.Image;

public interface HealthDao {

	int healthCount(BoardSearch bs);
	List<HealthInfo> healthList(BoardSearch bs);
	int insertInfo(HealthInfo hi);
	int insertInfoImage(Image i);
	HealthInfo selectOne(int no);
	List<String> infoImageList(int no);
	int deleteInfoImage(String string);
	int deleteInfo(int infoSeq);

}
