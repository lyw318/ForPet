package com.forpet.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.forpet.dao.NoticeAndEventDao;
import com.forpet.model.vo.BoardSearch;
import com.forpet.model.vo.Event;
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
	@Transactional(rollbackFor = RuntimeException.class)
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

	@Override
	public List<String> noticeImageList(int viewNo) {
		return dao.noticeImageList(viewNo);
	}

	@Override
	@Transactional(rollbackFor = RuntimeException.class)
	public int deleteNotice(int noticeSeq, int imageCount) throws RuntimeException {
		
		int result = dao.deleteImageAll(noticeSeq);
		if(result<imageCount)
		{
			throw new RuntimeException();
		}
		int result2 = dao.deleteNotice(noticeSeq);
		if(result2<1)
		{
			throw new RuntimeException();
		}
		return result2;
	}
	
	@Override
	@Transactional(rollbackFor = RuntimeException.class)
	public int deleteEvent(int eventSeq, List<String> list) throws RuntimeException {
		int result;
		if(list != null && list.size()>0)
		{
			for(int i=0; i<list.size(); i++)
			{
				result = dao.deleteEventImage(list.get(i));
				if(result<1)
				{
					throw new RuntimeException();
				}
			}
		}
		result = dao.deleteEvent(eventSeq);
		if(result<1)
		{
			throw new RuntimeException();
		}
		return result;
	}
	
	@Override
	public int addReadcount(int viewNo) {
		return dao.addReadcount(viewNo);
	}

	@Override
	public Notice selectOne(int noticeSeq) {
		return dao.selectOne(noticeSeq);
	}

	@Override
	@Transactional(rollbackFor = RuntimeException.class)
	public int updateNotice(Notice n, List<Image> list, String[] exFile) {
		int result = 0;
		result=dao.updateNotice(n);
		if(result<=0)
		{
			throw new RuntimeException();
		}
		if(list != null && list.size()>0)
		{
			for(Image i : list)
			{
				result = dao.insertImage(i);
				if(result==0)
				{
					throw new RuntimeException();
				}
			}
		}
		if(exFile != null)
		{
			for(int i=0; i<exFile.length; i++)
			{
				if(exFile[i].trim().length()>0)
				{
					result = dao.deleteImage(exFile[i]);
					if(result==0)
					{
						throw new RuntimeException();
					}
				}
			}
		}
		return result;
	}

	
	@Override
	@Transactional(rollbackFor = RuntimeException.class)
	public int updateEvent(Event e, List<Image> list, String exFileM, String[] exFile) throws RuntimeException {
		int result = 0;
		result=dao.updateEvent(e);
		if(result<=0)
		{
			throw new RuntimeException();
		}
		if(list != null && list.size()>0)
		{
			for(Image i : list)
			{
				result = dao.insertEventImage(i);
				if(result==0)
				{
					throw new RuntimeException();
				}
			}
		}
		if(exFileM != null && exFileM.trim().length()>0)
		{
			result = dao.deleteEventImage(exFileM);
			if(result==0)
			{
				throw new RuntimeException();
			}
		}
		if(exFile != null)
		{
			for(int i=0; i<exFile.length; i++)
			{
				if(exFile[i].trim().length()>0)
				{
					result = dao.deleteEventImage(exFile[i]);
					if(result==0)
					{
						throw new RuntimeException();
					}
				}
			}
		}
		return result;
	}

	@Override
	public int eventCount(BoardSearch bs) {
		return dao.eventCount(bs);
	}

	@Override
	public List<Event> eventList(BoardSearch bs) {
		return dao.eventList(bs);
	}

	@Override
	@Transactional(rollbackFor = RuntimeException.class)
	public int insertEvent(Event e, List<Image> list) throws RuntimeException {
		int result = 0;
			result=dao.insertEvent(e);
		if(result<=0)
		{
			throw new RuntimeException();
		}
		if(list != null && list.size()>0)
		{
			for(Image i : list)
			{
				i.setRefseq(e.getEventSeq());
				result = dao.insertEventImage(i);
				if(result==0)
				{
					throw new RuntimeException();
				}		
			}
		}
		
		return result;
	}

	@Override
	public Event selectEvent(int no) {
		return dao.selectEvent(no);
	}

	@Override
	public List<String> eventImageList(int no) {
		return dao.eventImageList(no);
	}

	@Override
	public int addEventReadcount(int no) {
		return dao.addEventReadCount(no);
	}
	
	
	
}
