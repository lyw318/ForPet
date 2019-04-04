package com.forpet.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.forpet.common.PageBarFactory;
import com.forpet.model.vo.BoardSearch;
import com.forpet.model.vo.Notice;
import com.forpet.service.NoticeAndEventService;

@Controller
public class NoticeAndEventController {

	@Autowired
	private NoticeAndEventService service;
	
	
	@RequestMapping("/main/noticeAndEvent")
	public String noticeAndEvent(HttpServletRequest request)
	{
		BoardSearch bs = new BoardSearch();
/*		bs.setNumPerPage("10");
		bs.setcPage("1");*/
		bs.parsing();
		
		int ncount = service.noticeCount(bs);
		List<Notice> nlist = service.noticeList(bs);
		
		//페이징 처리
		String npage = PageBarFactory.getPageBar(ncount, bs,  request.getContextPath()+"/notice/noticeList");
		
		//이벤트 가져오는 로직 - 나중에 추가!
		request.setAttribute("npage", npage);
		request.setAttribute("ncount",ncount);
		request.setAttribute("nlist", nlist);
		return "notice/noticeAndEvent";
	}
	
	@RequestMapping("/notice/noticeList")
	public String noticeList(BoardSearch bs, HttpServletRequest request)
	{
		bs.parsing();
		
		int ncount = service.noticeCount(bs);
		List<Notice> nlist = service.noticeList(bs);
		
		//페이징 처리
		String npage = PageBarFactory.getPageBar(ncount, bs,  request.getContextPath()+"/notice/noticeList");
		
		request.setAttribute("npage", npage);
		request.setAttribute("ncount",ncount);
		request.setAttribute("nlist", nlist);
		return "notice/noticeList";
	}
	
	@RequestMapping("/notice/noticeForm")
	public String noticeForm()
	{
		return "notice/noticeForm";
	}
}
