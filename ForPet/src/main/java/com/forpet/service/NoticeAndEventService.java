package com.forpet.service;

import java.util.List;

import com.forpet.model.vo.BoardSearch;
import com.forpet.model.vo.Image;
import com.forpet.model.vo.Notice;

public interface NoticeAndEventService {
	
	int noticeCount(BoardSearch bs);
	List<Notice> noticeList(BoardSearch bs);
	int insertNotice(Notice notice, List<Image> list) throws RuntimeException;	
	List<String> noticeImageList(int viewNo);
	int deleteNotice(int noticeSeq, int imageCount) throws RuntimeException;
	int addReadcount(int viewNo);
	Notice selectOne(int noticeSeq);
	int updateNotice(Notice n, List<Image> list, String[] exFile);
	
}
