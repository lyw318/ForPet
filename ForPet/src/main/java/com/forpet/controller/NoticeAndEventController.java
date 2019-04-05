package com.forpet.controller;

import java.io.File;
import java.io.IOException;
import java.sql.Date;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.forpet.common.PageBarFactory;
import com.forpet.model.vo.BoardSearch;
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
		String npage = PageBarFactory.getPageBar(ncount, bs,  request.getContextPath()+"/notice/noticeList");
		
		//이벤트 가져오는 로직 - 나중에 추가!
		request.setAttribute("npage", npage);
		request.setAttribute("ncount",ncount);
		request.setAttribute("nlist", nlist);
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
	
	@RequestMapping("/notice/noticeView")
	@ResponseBody
	public List noticeView(String viewNo)
	{
		int no=0;
		try {
			no = Integer.parseInt(viewNo);
		} catch(NumberFormatException e)
		{
			
		}
		//조회수 증가 로직 필요
		
		List<String> ilist = service.noticeImageList(no);
		System.out.println(ilist);
		return ilist;
	}
	
	@RequestMapping("/notice/noticeForm")
	public String noticeForm()
	{
		return "notice/noticeForm";
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
			request.setAttribute("loc", "/notice/noticeList");
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
}
