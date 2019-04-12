package com.forpet.controller;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.forpet.model.vo.Member;
import com.forpet.service.VetService;

@Controller
public class vetViewAjax {

	@Autowired
	private VetService vservice;
	
	@RequestMapping("/vetView/scrap.do")
	@ResponseBody
	public int scrapAjax(int vetSeq, HttpServletRequest re)
	{
		Map<String, Integer> scrap = new HashMap(); //map int 가 아닌 Integer 를 쓴다
		scrap.put("vetSeq", vetSeq);
		Member m = (Member)re.getSession().getAttribute("loggedMember");
		int memberSeq;
		if(m !=null)
		{
			memberSeq = m.getMemberSeq();
			scrap.put("memberSeq", memberSeq);
		}
		int result = vservice.addScrap(scrap);
				
		return result;
				
	}
	
	
	@RequestMapping("/vetView/unscrap.do")
	@ResponseBody
	public int unscrapAjax(int vetSeq, HttpServletRequest re)
	{
		Map<String, Integer> scrap = new HashMap(); //map int 가 아닌 Integer 를 쓴다
		scrap.put("vetSeq", vetSeq);
		Member m = (Member)re.getSession().getAttribute("loggedMember");
		int memberSeq;
		if(m !=null)
		{
			memberSeq = m.getMemberSeq();
			System.out.println("삭제되는 멤버번호"+memberSeq);
			scrap.put("memberSeq", memberSeq);
		}
		int result = vservice.deleteScrap(scrap);
				
		return result;
				
	}
	
	
}
