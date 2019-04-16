package com.forpet.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.forpet.model.vo.Member;
import com.forpet.service.VetService;

@Controller
public class MyVetController {

	@Autowired
	private VetService vservice;

	@RequestMapping("/myvet/vetScrapList.do")
	@ResponseBody
	public List vetScrapList(HttpServletRequest re)
	{
		Member m=(Member)re.getSession().getAttribute("loggedMember");
		List list=vservice.selectVetList(m);	
		return list;		
	}
	
	
}
