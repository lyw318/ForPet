package com.forpet.controller;

import java.util.List;


import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.forpet.common.PageBarFactory;
import com.forpet.model.vo.Member;
import com.forpet.service.AdminService;

@Controller
public class AdminController {
@Autowired
private AdminService service;
/*	//관리자에서 회원목록
	@RequestMapping("/admin/adminList.do")
	public ModelAndView memberList(HttpSession session) {
		Member m=(Member)session.getAttribute("loggedMember");
		ModelAndView mv=new ModelAndView();
		List<Member> list=service.selectList(m);
		mv.addObject("list",list);
		mv.setViewName("admin/adminList");
		return mv;
	}
	*/
	//관리자에서 회원목록
	@RequestMapping("/admin/adminList.do")
	public ModelAndView memberList(@RequestParam(value="cPage",required=false,defaultValue="1")int cPage,HttpSession session) {
		
		Member m=(Member)session.getAttribute("loggedMember");
		
		int numPerPage=5;
		ModelAndView mv=new ModelAndView();
		
		int totalList=service.selectCount();
		List<Member> list=service.selectList(cPage,numPerPage);
		mv.addObject("list",list);
		mv.addObject("totalList",totalList);
		mv.addObject("pageBar",PageBarFactory.getPageBar2(totalList, cPage, numPerPage,"/spring/admin/adminList.do"));		
		mv.setViewName("admin/adminList");
		return mv;
	}


	
	//회원탈퇴리스트
		@RequestMapping("/admin/adminDeleteList.do")
		public ModelAndView adminDeleteList(HttpSession session) {
			Member m=(Member)session.getAttribute("loggedMember");
			ModelAndView mv=new ModelAndView();
			List<Member> list=service.selectDeleteList(m);
			mv.addObject("list",list);
			mv.setViewName("/admin/adminDeleteList");
			return mv;
			
		}
}
