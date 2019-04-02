package com.forpet.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.forpet.common.PageBarFactory;
import com.forpet.model.vo.Vet;
import com.forpet.service.VetService;


@Controller
public class SearchController {

	@Autowired
	private VetService service;

	@RequestMapping("/vetSearch.do")
	@ResponseBody  //ajax 꼭 붙여주기!!
	public List/*ModelAndView*/ VetsearchAjax(@RequestParam(value = "cPage", required = false, defaultValue = "1") int cPage, String search, String type) {
	
		int numPerPage=4;
		ModelAndView mv= new ModelAndView();
		Map<String, String> map = new HashMap();
		System.out.println("controller 에 값들어와?"+search+type);
		map.put("search",  search);
		map.put("type", type);
		
		List<Vet> list = service.selectList(cPage, numPerPage, map);
		int totalList = service.selectCount(map);
		mv.addObject("list", list);
		mv.addObject("totalList", totalList);
		mv.addObject("pageBar", PageBarFactory.getPageBar(totalList, cPage, numPerPage, "/forpet/search/search"));
		mv.setViewName("search/searchList");
		return list;
		
	}
	
	
}
