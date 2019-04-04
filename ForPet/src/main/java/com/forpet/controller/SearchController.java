package com.forpet.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.forpet.common.PageBarFactoryAjax;
import com.forpet.model.vo.Vet;
import com.forpet.service.VetService;


@Controller
public class SearchController {

	@Autowired
	private VetService service;

	@RequestMapping("/vetSearch.do")
	/*@ResponseBody  //ajax �� �ٿ��ֱ�!!
*/	public ModelAndView VetsearchAjax(@RequestParam(value = "cPage", required = false, defaultValue = "1") int cPage, String search, String type,HttpServletResponse res ) {
	
		int numPerPage=7;
		ModelAndView mv= new ModelAndView();
		Map<String, String> map = new HashMap();
		System.out.println("controller �� ������?"+search+type);
		map.put("search",  search);
		map.put("type", type);
		
		List<Vet> list = service.selectList(cPage, numPerPage, map);
		int totalList = service.selectCount(map);
		res.setContentType("application/json;charset=UTF-8");//Json �ѱ۱��� �ذ� ��ܿ� HttpServletResponse �߰��������
		mv.addObject("list", list);
		mv.addObject("totalList", totalList);
		mv.addObject("pageBar", PageBarFactoryAjax.getPageBar(totalList, cPage, numPerPage, "/forpet/search/search"));
		mv.setViewName("jsonView"); //response body ��Ŀ��� jsonView ������� ��ȯ
		return mv;
		
	}
	
	@RequestMapping("/vetDetail.do")
	public ModelAndView vetDetail(int vetSeq)
	{
		Vet vet=service.selectVet(vetSeq);
		List vcate=service.selectVetCate(vetSeq);
		List vserv=service.selectVetServ(vetSeq);
		ModelAndView mv=new ModelAndView();
		
		mv.addObject("vet",vet);
		mv.addObject("vcate",vcate);
		mv.addObject("vserv",vserv);
		mv.setViewName("search/vetView");
		return mv;
		
	}
	
	
}
