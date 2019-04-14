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
import org.springframework.web.multipart.MultipartFile;

import com.forpet.common.PageBarFactory;
import com.forpet.model.vo.BoardSearch;
import com.forpet.model.vo.HealthInfo;
import com.forpet.model.vo.Image;
import com.forpet.model.vo.Member;
import com.forpet.service.HealthService;

@Controller
public class HealthController {
	
	@Autowired
	private HealthService service;
	private Logger logger=LoggerFactory.getLogger(HealthController.class);
	
	@RequestMapping("/health/healthInfo")
	public String healthInfo(BoardSearch bs, HttpServletRequest request)
	{
		bs.parsing(9);
		
		int hcount = service.healthCount(bs);
		List<HealthInfo> list = service.healthList(bs);
		
		//페이징 처리
		String hpage = PageBarFactory.getPageBar(hcount, bs,  request.getContextPath()+"/health/healthInfo");
		
		request.setAttribute("hpage", hpage);
		request.setAttribute("hcount",hcount);
		request.setAttribute("hlist", list);
		
		HealthInfo h = new HealthInfo();
		h.setPetType(bs.getType());
		h.createPetTypeName();
		request.setAttribute("typeName", h.getPetTypeName());
		
		return "health/healthInfo";
	}
	
	@RequestMapping("/health/healthForm")
	public String healthForm()
	{
		return "health/healthForm";
	}
	
	@RequestMapping("/health/healthFormEnd.do")
	public String healthFormEnd(HealthInfo hi, MultipartFile[] upFile, MultipartFile upFileM, HttpServletRequest request)
	{
		Member m = (Member)request.getSession().getAttribute("loggedMember");
		
		String saveDir = request.getSession().getServletContext().getRealPath("/resources/upload/infoImage/");
		File dir = new File(saveDir);
		if(!dir.exists())
		{
			dir.mkdirs();
		}
		
		List<Image> list = new ArrayList<Image>();
		
		int count=0;
		String timeStr = new SimpleDateFormat("yyMMddHHmmssSSS").format(new Date(System.currentTimeMillis()));
		
		if(upFileM != null && !upFileM.isEmpty())
		{
			String oriFileName = upFileM.getOriginalFilename();
			String ext=oriFileName.substring(oriFileName.lastIndexOf("."));
	
			int uniqueNum = m.getMemberSeq();
			String reNamedFile= timeStr+"_"+uniqueNum+"_"+count+ext;
			count++;
			
			try {
				upFileM.transferTo(new File(saveDir+reNamedFile));
				Image i = new Image();
				i.setFilename(reNamedFile);
				i.setPriority(count);
				list.add(i);
				
				} catch(IOException e)
				{
					e.printStackTrace();
				}
		}
		
		for(MultipartFile f : upFile)
		{
			if(!f.isEmpty())
			{
				String oriFileName = f.getOriginalFilename();
				String ext=oriFileName.substring(oriFileName.lastIndexOf("."));
		
				int uniqueNum = m.getMemberSeq();
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
		
		int result=0;
		try {
		result= service.insertInfo(hi, list);
		} catch(RuntimeException e)
		{
			result=0;
		}
		
		if(result>0)
		{
			request.setAttribute("msg","반려동물 정보 등록 성공");
			request.setAttribute("loc", "/health/healthView?viewNo="+hi.getInfoSeq());
		} else
		{
			request.setAttribute("msg","반려동물 정보 등록 실패");
			request.setAttribute("loc","/health/healthForm");
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
	
	
	@RequestMapping("/health/healthView")
	public String healthView(String viewNo, BoardSearch bs, HttpServletRequest request)
	{
		int no=0;
		try {
			no = Integer.parseInt(viewNo);
		} catch(NumberFormatException e)
		{
			
		}
		
		HealthInfo hi = service.selectOne(no);
		
		if(hi != null)
		{
			List<String> ilist = service.infoImageList(no);
			hi.createPetTypeName();
			request.setAttribute("ilist", ilist);
			request.setAttribute("hi", hi);
			return "health/healthView";
		}
		else
		{
			request.setAttribute("msg", "반려동물 정보 게시글이 존재하지 않습니다.");
			request.setAttribute("loc", PageBarFactory.createUrl(bs,"/health/healthInfo"));
			return "common/msg";
		}
		
	}

}
