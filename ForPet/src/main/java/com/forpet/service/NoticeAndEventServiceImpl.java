package com.forpet.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.forpet.dao.NoticeAndEventDao;
import com.forpet.model.vo.BoardSearch;
import com.forpet.model.vo.Notice;

@Service
public class NoticeAndEventServiceImpl implements NoticeAndEventService {

	@Autowired
	private NoticeAndEventDao dao;
	
	@Override
	public int noticeCount(BoardSearch bs) {
		return dao.noticeCount(bs);
	}

	@Override
	public List<Notice> noticeList(BoardSearch bs) {
		return dao.noticeList(bs);
	}
	

}
