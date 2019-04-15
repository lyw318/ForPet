package com.forpet.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.forpet.common.PageBarFactory;
import com.forpet.model.vo.BoardSearch;
import com.forpet.model.vo.SmallBoard;
import com.forpet.model.vo.SmallBoardComment;
import com.forpet.service.SmallboardService;



@Controller
public class SmallBoardController {
	
	@Autowired
	private SmallboardService service;
	
	@RequestMapping("/smallboard/smallboardList")
	public String smallboardList(BoardSearch bs, HttpServletRequest request)
	{
		bs.parsing();
		
		int sbcount = service.smallboardCount(bs);
		List<SmallBoard> sblist = service.smallboardList(bs);
		
		String sbpage = PageBarFactory.getPageBar(sbcount, bs, request.getContextPath()+"/smallboard/smallboardList");
		
		request.setAttribute("sbpage", sbpage);
		request.setAttribute("sbcount", sbcount);
		request.setAttribute("sblist", sblist);
		
		return "smallboard/smallboardList";
	}
	
	@RequestMapping("/smallboard/smallboardForm")
	public String smallboardForm() {
		return "smallboard/smallboardForm";
	}
	
	@RequestMapping("/smallboard/smallboardFormEnd.do")
	public ModelAndView insertSmallboard(SmallBoard sb,HttpServletRequest re) 
	{
		ModelAndView mv=new ModelAndView();
		int result=service.insertSmallboard(sb);
		
		mv.setViewName("common/msg");
		mv.addObject("msg","등록완료");
		mv.addObject("loc","/smallboard/smallboardList");
		
		return mv;
	}
	
	@RequestMapping("/smallboard/smallboardView.do")
	public ModelAndView selectOne(int smallboardSeq)
	{
		ModelAndView mv=new ModelAndView();
		mv.addObject("comments",service.smallboardCommentList(smallboardSeq));
		mv.addObject("smallboard",service.selectSmallboard(smallboardSeq));
		mv.setViewName("smallboard/smallboardView");
		return mv;
	}
	
	@RequestMapping("/smallboard/deletesmallboard.do")
	public ModelAndView deleteSmallBoard(int smallboardSeq)
	{
		ModelAndView mv=new ModelAndView();
		
		mv.addObject("result",service.deleteSmallBoard(smallboardSeq));
		mv.setViewName("common/msg");
		mv.addObject("msg","삭제성공");
		mv.addObject("loc","/smallboard/smallboardList");
		
		return mv;
	}
	
	@RequestMapping("/smallboard/updatesmallboard.do")
	public String smallboardUpdate(int smallboardSeq,HttpServletRequest request)
	{
		int no=0;
		try {
			no=smallboardSeq;
		}catch(NumberFormatException e)
		{
			
		}
		SmallBoard sb=service.selectSmallboard(no);
		if(sb!=null)
		{
			request.setAttribute("sb", sb);
			return "smallboard/smallboardUpdate";
		}
		else {
			request.setAttribute("msg", "게시글이 존재하지 않습니다.");
			request.setAttribute("loc", "/smallboard/smallboardList");
			return "common/msg";
		}
	}
	@RequestMapping("/smallboard/smallboardUpdateEnd.do")
	public String smallboardUpdateEnd(SmallBoard sb, HttpServletRequest request)
	{
		int result=service.updateSmallBoard(sb);
		if(result>0) {
			request.setAttribute("msg", "수정 완룡");
			request.setAttribute("loc", "/smallboard/smallboardView.do?smallboardSeq="+sb.getSmallboardSeq());
		}
		else {
			request.setAttribute("msg", "수정 쉴패");
			request.setAttribute("loc", "/smallboard/smallboardView.do?smallboardSeq="+sb.getSmallboardSeq());
		}
		return "common/msg";
	}
	
	@RequestMapping("/smallboard/smallboardCommentInsert")
	public ModelAndView commentInsert(SmallBoardComment comments)
	{
		ModelAndView mv=new ModelAndView();
		mv.addObject("result",service.smallboardcommentInsert(comments));
		mv.setViewName("common/msg");
		mv.addObject("msg","댓글작성완료");
		mv.addObject("loc","/smallboard/smallboardView.do?smallboardSeq="+comments.getSmallboardSeq());
		
		return mv;
	}
	
	@RequestMapping("/smallboard/smallboardCommentDelete")
	public ModelAndView commentDelete(int sbcommentSeq,int smallboardSeq)
	{
		ModelAndView mv=new ModelAndView();

		mv.addObject("result",service.smallboardCommentDelete(sbcommentSeq));
		mv.setViewName("common/msg");
		mv.addObject("msg","삭제성공");
		mv.addObject("loc","/smallboard/smallboardView.do?smallboardSeq="+smallboardSeq);

		return mv;
	}

}
