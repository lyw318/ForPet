package com.forpet.dao;

import java.util.List;

import com.forpet.model.vo.BoardSearch;
import com.forpet.model.vo.Notice;

public interface NoticeAndEventDao {
	
	int noticeCount(BoardSearch bs);
	List<Notice> noticeList(BoardSearch bs);
}
