package com.forpet.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.forpet.model.vo.Member;
import com.forpet.model.vo.Pet;
import com.forpet.service.VetService;

@Controller
public class MyVetController {

	@Autowired
	private VetService vservice;

	@RequestMapping("/myvet/vetScrapList.do")
	public ModelAndView vetScrapList(HttpServletRequest re)
	{
	Member m=(Member)re.getSession().getAttribute("loggedMember");
	ModelAndView mv=new ModelAndView();
	List list=vservice.selectVetList(m);
	mv.addObject("list",list);
	mv.setViewName("myvet/myVetList");
	return mv;
		
		
		
	}
}
