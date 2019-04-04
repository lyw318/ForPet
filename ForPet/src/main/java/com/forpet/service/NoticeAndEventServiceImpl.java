package com.forpet.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.forpet.dao.NoticeAndEventDao;
import com.forpet.model.vo.BoardSearch;
import com.forpet.model.vo.Image;
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

	@Override
	@Transactional(rollbackFor = Exception.class)
	public int insertNotice(Notice notice, List<Image> list) throws RuntimeException {
		int result = 0;
		result=dao.insertNotice(notice);
		if(result<=0)
		{
			throw new RuntimeException();
		}
		if(list != null && list.size()>0)
		{
			for(Image i : list)
			{
				i.setRefseq(notice.getNoticeSeq());
				result = dao.insertImage(i);
				if(result==0)
				{
					throw new RuntimeException();
				}
			}
		}
		
		return result;
	}
	

}
