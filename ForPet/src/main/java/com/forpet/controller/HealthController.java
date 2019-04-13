package com.forpet.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.forpet.common.PageBarFactory;
import com.forpet.model.vo.BoardSearch;
import com.forpet.model.vo.HealthInfo;
import com.forpet.service.HealthService;

@Controller
public class HealthController {
	
	@Autowired
	private HealthService service;
	private Logger logger=LoggerFactory.getLogger(HealthController.class);
	
	@RequestMapping("/health/healthInfo")
	public String healthInfo(BoardSearch bs, HttpServletRequest request)
	{
/*		if(bs.getType()==null || bs.getType().trim().length()<1);
		{
			bs.setType("All");
		}*/
		bs.parsing();
		
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

}
