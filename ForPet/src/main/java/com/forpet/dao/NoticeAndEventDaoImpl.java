package com.forpet.dao;

import java.util.List;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.forpet.model.vo.BoardSearch;
import com.forpet.model.vo.Event;
import com.forpet.model.vo.Image;
import com.forpet.model.vo.Notice;

@Repository
public class NoticeAndEventDaoImpl implements NoticeAndEventDao {
	
	@Autowired
	private SqlSessionTemplate session;

	@Override
	public int noticeCount(BoardSearch bs) {
		return session.selectOne("noticeandevent.noticeCount",bs);
	}

	@Override
	public List<Notice> noticeList(BoardSearch bs) {
		RowBounds row=new RowBounds((bs.getcPageNo()-1)*bs.getNumPerPageNo(), bs.getNumPerPageNo());
		return session.selectList("noticeandevent.noticeList",bs,row);
	}

	@Override
	public int insertNotice(Notice notice) {
		return session.insert("noticeandevent.insertNotice",notice);
	}
	
	@Override
	public int insertImage(Image image) {
		return session.insert("noticeandevent.insertImage",image);
	}

	@Override
	public List<String> noticeImageList(int viewNo) {
		return session.selectList("noticeandevent.noticeImageList",viewNo);
	}

	@Override
	public int deleteImageAll(int noticeSeq) {
		return session.delete("noticeandevent.deleteImageAll",noticeSeq);
	}

	@Override
	public int deleteNotice(int noticeSeq) {
		return session.delete("noticeandevent.deleteNotice",noticeSeq);
	}

	@Override
	public int addReadcount(int viewNo) {
		return session.update("noticeandevent.addReadcount", viewNo);
	}

	@Override
	public Notice selectOne(int noticeSeq) {
		return session.selectOne("noticeandevent.selectOne", noticeSeq);
	}

	@Override
	public int updateNotice(Notice n) {
		return session.update("noticeandevent.updateNotice", n);
	}

	@Override
	public int deleteImage(String filename) {
		return session.delete("noticeandevent.deleteImage", filename);
	}

	@Override
	public int eventCount(BoardSearch bs) {
		return session.selectOne("noticeandevent.eventCount",bs);
	}

	@Override
	public List<Event> eventList(BoardSearch bs) {
		RowBounds row=new RowBounds((bs.getcPageNo()-1)*bs.getNumPerPageNo(), bs.getNumPerPageNo());
		return session.selectList("noticeandevent.eventList",bs,row);
	}

	@Override
	public int insertEvent(Event e) {
		return session.insert("noticeandevent.insertEvent", e);
	}

	@Override
	public int insertEventImage(Image i) {
		return session.insert("noticeandevent.insertEventImage",i);
	}

	@Override
	public Event selectEvent(int no) {
		return session.selectOne("noticeandevent.selectEvent",no);
	}

	@Override
	public List<String> eventImageList(int no) {
		return session.selectList("noticeandevent.eventImageList",no);
	}

	@Override
	public int addEventReadCount(int no) {
		return session.update("noticeandevent.addEventReadCount",no);
	}
	
	
	
	
}
