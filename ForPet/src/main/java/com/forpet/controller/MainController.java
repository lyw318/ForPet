package com.forpet.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.forpet.model.vo.Member;
import com.forpet.model.vo.MemberFriend;
import com.forpet.model.vo.Vet;
import com.forpet.service.CommunityService;
import com.forpet.service.VetService;

import net.sf.json.JSONArray;




@Controller
public class MainController {

	@Autowired
	private VetService service;
	
	@Autowired
	private CommunityService coService;
	
	List <Vet> vlist = new ArrayList();
	JSONArray jsonArray = new JSONArray();
	
	@RequestMapping("/main")
	public String mainPage() {
		return "main";
	}
	
	@RequestMapping("/main/defaultSection")
	public String defaultSection() {
		return "defaultSection";
	}
	
	@RequestMapping("/main/search")
	public String searchpage(Model model)
	{
	
		
		List<Vet> list = service.VetList();
		model.addAttribute("list",list);
		model.addAttribute("jlist",jsonArray.fromObject(list));
		//vlist 보내기
		System.out.println("mainClist"+list);
		System.out.println("mainCJlist"+jsonArray.fromObject(list));
		return "/search/search";
	}
	
	@RequestMapping("/main/memberEnroll")
	public String memberEnroll() {
		return "member/memberEnroll";
	}
	//마이페이지 이동
	@RequestMapping("/main/myPageMain")
	public ModelAndView myPageMain(HttpSession session) {
		
		ModelAndView mv = new ModelAndView();
		String msg = "";
		String loc = "";
		if(session.getAttribute("loggedMember") == null) {
			msg = "로그인을 부탁드립니다.";
			loc = "";
			mv.addObject("msg", msg);
			mv.addObject("loc", loc);
			mv.setViewName("common/msg");
		}
		else {
			mv.setViewName("myPage/myPageMain");
		}
		
		return mv;
	}
	
	//관리자페이지 이동
	@RequestMapping("/main/adminPageMain")
	public ModelAndView dminPageMain(HttpSession session) {
		
		Member loggedMember = (Member) session.getAttribute("loggedMember");
		ModelAndView mv = new ModelAndView();
		String msg = "";
		String loc = "";
		if(!(loggedMember != null && loggedMember.getMemberEmail().equals("admin"))) {
			msg = "관리자만 접근 가능합니다.";
			loc = "";
			mv.addObject("msg", msg);
			mv.addObject("loc", loc);
			mv.setViewName("common/msg");
		}
		else {
			mv.setViewName("admin/adminPageMain");
		}
		
		return mv;
	}
	

	@RequestMapping("/main/userIdPopUp.do")
	private ModelAndView friendListDo(Member m, HttpSession session) {

		
		Member oneself = (Member) session.getAttribute("loggedMember");
		String inFriFlag = "";
		String blFriFlag = "";
		if(oneself != null) {
			//로그인 대상자 확인후 그거에 맞춰 메뉴 구성 로직
			MemberFriend mf = new MemberFriend();
			mf.setMemberSeq(oneself.getMemberSeq());
			List<MemberFriend> inFriList = coService.inSelectList(mf);
			List<MemberFriend> blFriList = coService.blSelectList(mf);
			for(int i=0;i<inFriList.size();i++) {
				if(inFriList.get(i).getmFriendNickname().equals(m.getMemberNickname())) {
					inFriFlag = m.getMemberNickname();
					blFriFlag = "";
				}
			}		
			for(int i=0;i<blFriList.size();i++) {
				if(blFriList.get(i).getmFriendNickname().equals(m.getMemberNickname())) {
					inFriFlag = "";
					blFriFlag = m.getMemberNickname();
				}
			}
		}
		else {
			
		}
		
		ModelAndView mv = new ModelAndView();
		mv.addObject("member", m);
		mv.addObject("inFriFlag", inFriFlag);
		mv.addObject("blFriFlag", blFriFlag);
		mv.setViewName("common/userIdWindow");
		return mv;
	}
	
}
