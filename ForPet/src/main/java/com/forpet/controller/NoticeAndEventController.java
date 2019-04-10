package com.forpet.controller;

import java.io.File;
import java.io.IOException;
import java.sql.Date;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.CookieValue;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.forpet.common.PageBarFactory;
import com.forpet.model.vo.BoardSearch;
import com.forpet.model.vo.Event;
import com.forpet.model.vo.Image;
import com.forpet.model.vo.Notice;
import com.forpet.service.NoticeAndEventService;

@Controller
public class NoticeAndEventController {

	@Autowired
	private NoticeAndEventService service;
	private Logger logger=LoggerFactory.getLogger(NoticeAndEventController.class);
	
	@RequestMapping("/main/noticeAndEvent")
	public String noticeAndEvent(HttpServletRequest request)
	{
		BoardSearch bs = new BoardSearch();
		bs.parsing();
		
		int ncount = service.noticeCount(bs);
		List<Notice> nlist = service.noticeList(bs);
		
		//페이징 처리
		String npage = PageBarFactory.getPageBar(ncount, bs, request.getContextPath()+"/notice/noticeList");
		
		//이벤트 가져오는 로직 - 나중에 추가!
		bs.setNumPerPage("9");
		int ecount = service.eventCount(bs);
		List<Event> elist = service.eventList(bs);
		
		//페이징 처리
		String epage = PageBarFactory.getPageBar(ecount, bs, request.getContextPath()+"/event/eventList");
		
		
		request.setAttribute("npage", npage);
		request.setAttribute("ncount",ncount);
		request.setAttribute("nlist", nlist);
		
		request.setAttribute("epage", epage);
		request.setAttribute("ecount",ecount);
		request.setAttribute("elist", elist);
		
		return "notice/noticeAndEvent";
	}
	
	@RequestMapping("/notice/noticeList")
	public String noticeList(BoardSearch bs, String viewNo, HttpServletRequest request)
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
	
	@RequestMapping("/event/eventList")
	public String eventList(BoardSearch bs, HttpServletRequest request)
	{
		bs.setNumPerPage("9");
		bs.parsing();
		
		int ecount = service.eventCount(bs);
		List<Event> elist = service.eventList(bs);
		
		//페이징 처리
		String epage = PageBarFactory.getPageBar(ecount, bs, request.getContextPath()+"/event/eventList");
		
		request.setAttribute("epage", epage);
		request.setAttribute("ecount",ecount);
		request.setAttribute("elist", elist);
		
		return "notice/eventList";
	}
	
	@RequestMapping("/notice/noticeView")
	@ResponseBody
	public Map<String, Object> noticeView(String viewNo, @CookieValue(value="noticeCookie", required = false) Cookie noticeCookie, HttpServletResponse response)
	{
		int no=0;
		try {
			no = Integer.parseInt(viewNo);
		} catch(NumberFormatException e)
		{
			
		}
		Notice n = service.selectOne(no);
		if(n != null)
		{
			List<String> ilist = service.noticeImageList(no);
			Map<String, Object> map = new HashMap<String, Object>();
			map.put("ilist", ilist);
			map.put("n",n);
			
			cookieLogic:
			{
				if(noticeCookie != null)
				{
					String[] cdata = noticeCookie.getValue().split("\\|");
					for(int i=0; i<cdata.length; i++)
					{
						if(cdata[i].equals(viewNo))
						{
							break cookieLogic;
						}
					}
					
					noticeCookie.setValue(noticeCookie.getValue() + no + "|");
					noticeCookie.setMaxAge(7*24*60*60);
					response.addCookie(noticeCookie);
					
					service.addReadcount(no);
				}
				else
				{
					noticeCookie = new Cookie("noticeCookie", no+"|");
					noticeCookie.setMaxAge(7*24*60*60);
					response.addCookie(noticeCookie);
					service.addReadcount(no);
				}
			}
			
			return map;
		}
		else
		{
			return null;
		}
	}
	
	@RequestMapping("/notice/noticeForm")
	public String noticeForm()
	{
		return "notice/noticeForm";
	}
	
	@RequestMapping("/event/eventForm")
	public String eventForm()
	{
		return "notice/eventForm";
	}
	
	@RequestMapping("/notice/noticeFormEnd.do")
	public String noticeFormEnd(Notice n, MultipartFile[] upFile, HttpServletRequest request)
	{
		String saveDir = request.getSession().getServletContext().getRealPath("/resources/upload/noticeImage/");
		File dir = new File(saveDir);
		if(!dir.exists())
		{
			dir.mkdirs();
		}
		
		
		List<Image> list = new ArrayList<Image>();
		int count=0;
		String timeStr = new SimpleDateFormat("yyMMddHHmmssSSS").format(new Date(System.currentTimeMillis()));
		
		for(MultipartFile f : upFile)
		{
			if(!f.isEmpty())
			{
				String oriFileName = f.getOriginalFilename();
				String ext=oriFileName.substring(oriFileName.lastIndexOf("."));
		
				int uniqueNum = n.getMemberSeq();
				String reNamedFile= timeStr+"_"+uniqueNum+"_"+count+ext;
				count++;
				
				try {
					f.transferTo(new File(saveDir+reNamedFile));
					} catch(IOException e)
					{
						e.printStackTrace();
						continue;
					}
				
				Image i = new Image();
				i.setFilename(reNamedFile);
				i.setPriority(count);
				list.add(i);
			}
			
		}
		int result=service.insertNotice(n, list);
		

		if(result>0)
		{
			request.setAttribute("msg","공지사항 등록 성공");
			request.setAttribute("loc", "/notice/noticeList?viewNo="+n.getNoticeSeq());
		} else
		{
			request.setAttribute("msg","공지사항 등록 실패");
			request.setAttribute("loc", "/notice/noticeForm");
			// list 파일 삭제 로직
			for(int i=0; i<list.size();i++)
			{
				if(new File(saveDir+list.get(i).getFilename()).delete()==false)
				{
					logger.error(saveDir+list.get(i).getFilename()+"파일 삭제 실패");
				}
			}
		}
		return "common/msg";
	}
	
	@RequestMapping("/notice/noticeDelete.do")
	public String noticeDelete(String viewNo, HttpServletRequest request)
	{
		int noticeSeq=0;
		try {
			noticeSeq = Integer.parseInt(viewNo);
		} catch(NumberFormatException e)
		{
			
		}
		List<String> list = service.noticeImageList(noticeSeq);
		int result = service.deleteNotice(noticeSeq, list.size());
		if(result>0)
		{
			request.setAttribute("msg","공지사항 삭제 성공");
			request.setAttribute("loc", "/notice/noticeList");
			String saveDir = request.getSession().getServletContext().getRealPath("/resources/upload/noticeImage/");
			// list 파일 삭제 로직
			for(int i=0; i<list.size();i++)
			{
				if(new File(saveDir+list.get(i)).delete()==false)
				{
					logger.error(saveDir+list.get(i)+"파일 삭제 실패");
				}
			}
		}
		else
		{
			request.setAttribute("msg","공지사항 삭제 실패");
			request.setAttribute("loc", "/notice/noticeList");
		}
		
		return "common/msg";
	}
	
	@RequestMapping("/notice/noticeUpdate")
	public String noticeUpdate(String viewNo, HttpServletRequest request)
	{
		int no=0;
		try {
			no = Integer.parseInt(viewNo);
		} catch(NumberFormatException e)
		{
			
		}
		Notice n = service.selectOne(no);
		if(n != null)
		{
			List<String> ilist = service.noticeImageList(no);
			request.setAttribute("n", n);
			request.setAttribute("ilist",ilist);
			return "notice/noticeUpdate";
		}
		else
		{
			request.setAttribute("msg","게시글이 존재하지 않습니다.");
			request.setAttribute("loc", "/notice/noticeList");
			return "common/msg";
		}
	}
	
	@RequestMapping("/notice/noticeUpdateEnd.do")
	public String noticeUpdateEnd(Notice n, MultipartFile[] upFile, String[] exFile, HttpServletRequest request)
	{
		String saveDir = request.getSession().getServletContext().getRealPath("/resources/upload/noticeImage/");
		File dir = new File(saveDir);
		if(!dir.exists())
		{
			dir.mkdirs();
		}
		
		List<Image> list = new ArrayList<Image>();
		int count=0;
		if(exFile!=null)
		{
			count += exFile.length;
		}
		else
		{
			exFile = new String[0];
		}
		
		String timeStr = new SimpleDateFormat("yyMMddHHmmssSSS").format(new Date(System.currentTimeMillis()));
		
		for(MultipartFile f : upFile)
		{
			if(!f.isEmpty())
			{
				String oriFileName = f.getOriginalFilename();
				String ext=oriFileName.substring(oriFileName.lastIndexOf("."));
		
				int uniqueNum = n.getMemberSeq();
				String reNamedFile= timeStr+"_"+uniqueNum+"_"+count+ext;
				
				try {
					f.transferTo(new File(saveDir+reNamedFile));
					} catch(IOException e)
					{
						e.printStackTrace();
						continue;
					}
				
				Image i = new Image();
				i.setFilename(reNamedFile);
				i.setPriority(count);
				i.setRefseq(n.getNoticeSeq());
				list.add(i);
				count++;
			}
			
		}
		int result=service.updateNotice(n, list, exFile);
		if(result>0)
		{
			request.setAttribute("msg","공지사항 수정 성공");
			request.setAttribute("loc", "/notice/noticeList?viewNo="+n.getNoticeSeq());
			// exFile 파일 삭제 로직
			for(int i=0; i<exFile.length;i++)
			{
				if(exFile[i].trim().length()>0)
				{
					if(new File(saveDir+exFile[i].trim()).delete()==false)
					{
						logger.error(saveDir+exFile[i].trim()+"파일 삭제 실패");
					}
				}
			}
		}
		else
		{
			request.setAttribute("msg","공지사항 수정 실패");
			request.setAttribute("loc", "/notice/noticeList?viewNo="+n.getNoticeSeq());
			// list 파일 삭제 로직
			for(int i=0; i<list.size();i++)
			{
				if(new File(saveDir+list.get(i).getFilename()).delete()==false)
				{
					logger.error(saveDir+list.get(i).getFilename()+"파일 삭제 실패");
				}
			}
		}
		
		return "common/msg";
	}
}
