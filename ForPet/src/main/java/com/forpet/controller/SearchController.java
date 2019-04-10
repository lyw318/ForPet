package com.forpet.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.forpet.common.PageBarFactoryAjax;
import com.forpet.model.vo.Member;
import com.forpet.model.vo.Vet;
import com.forpet.service.VetService;


@Controller
public class SearchController {

	@Autowired
	private VetService service;

	@RequestMapping("/vetSearch.do")
	/*@ResponseBody  //ajax 꼭 붙여주기!!
*/	public ModelAndView VetsearchAjax(@RequestParam(value = "cPage", required = false, defaultValue = "1") int cPage, String search, String type,HttpServletResponse res ) {
	
		int numPerPage=7;
		ModelAndView mv= new ModelAndView();
		Map<String, String> map = new HashMap();
		//System.out.println("controller 에 값들어와?"+search+type);
		map.put("search",  search);
		map.put("type", type);
		
		List<Vet> list = service.selectList(cPage, numPerPage, map);
		int totalList = service.selectCount(map);
		res.setContentType("application/json;charset=UTF-8");//Json 한글깨짐 해결 상단에 HttpServletResponse 추가해줘야함
		mv.addObject("list", list);
		mv.addObject("totalList", totalList);
		mv.addObject("pageBar", PageBarFactoryAjax.getPageBar(totalList, cPage, numPerPage, "/forpet/search/search"));
		mv.setViewName("jsonView"); //response body 방식에서 jsonView 방식으로 전환
		return mv;
		
	}
	
	@RequestMapping("/vetDetail.do")
	public ModelAndView vetDetail(int vetSeq, HttpServletRequest re)
	{
		Vet vet=service.selectVet(vetSeq);
		List vcate=service.selectVetCate(vetSeq);
		List vserv=service.selectVetServ(vetSeq);
		ModelAndView mv=new ModelAndView();
		
		Member m = (Member)re.getSession().getAttribute("loggedMember");
		int memberSeq=0;
		if(m !=null)
		{
			memberSeq = m.getMemberSeq();
		}		
		Map<String, Integer> checkScrape = new HashMap();
		checkScrape.put("vetSeq",vetSeq);		
		checkScrape.put("memberSeq",memberSeq);
		int isScraped=service.selectScrap(checkScrape)+1; //스크랩이 되어있는지 확인
		//System.out.println("vetDetail 나왔어요");
		System.out.println("isscraped"+isScraped);
		mv.addObject("vet",vet);
		mv.addObject("vcate",vcate);
		mv.addObject("vserv",vserv);
		mv.addObject("isScraped",isScraped);
		mv.setViewName("search/vetView");
		return mv;
		
	}
	
}
