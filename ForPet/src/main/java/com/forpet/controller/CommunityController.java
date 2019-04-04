package com.forpet.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.forpet.model.vo.Member;
import com.forpet.model.vo.MemberFriend;
import com.forpet.service.CommunityService;

@Controller
public class CommunityController {

	@Autowired
	private CommunityService service;
	
	
	@RequestMapping("/community/friendList")
	private ModelAndView friendList(HttpSession session) {
		
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
			mv.setViewName("myPage/community/friendList");
		}
		
		return mv;
	}

	@RequestMapping("/community/friendInList.do")
	private ModelAndView friendInList(HttpSession session) {


		Member oneself = (Member) session.getAttribute("loggedMember");
		
		MemberFriend mf = new MemberFriend();
		mf.setMemberSeq(oneself.getMemberSeq());
		
		List<MemberFriend> mfResult = service.inSelectList(mf);
		
		ModelAndView mv = new ModelAndView();
		mv.addObject("friendList",mfResult);
		mv.setViewName("myPage/community/friendListAjax/friendInListAjax");
		return mv;
	}
	
	@RequestMapping("/community/friendBlList.do")
	private ModelAndView friendBlList(HttpSession session) {


		Member oneself = (Member) session.getAttribute("loggedMember");
		
		MemberFriend mf = new MemberFriend();
		mf.setMemberSeq(oneself.getMemberSeq());
		
		List<MemberFriend> mfResult = service.blSelectList(mf);
		
		ModelAndView mv = new ModelAndView();
		mv.addObject("friendList",mfResult);
		mv.setViewName("myPage/community/friendListAjax/friendBlListAjax");
		return mv;
	}
	
	@RequestMapping("/community/friendInsert")
	private ModelAndView friendInsert(Member m, HttpSession session) {
		
		Member oneself = (Member) session.getAttribute("loggedMember");
		Member friendInfo = service.mSelectOne(m);
		
		MemberFriend mf = new MemberFriend();
		
		ModelAndView mv = new ModelAndView();
		String msg="";
		String loc="/community/friendList";
		
		if(friendInfo == null) // 친구 닉네임 검색 결과 유무
		{
			msg="친구 닉네임이 없습니다.";
			mv.addObject("msg", msg);
			mv.addObject("loc", loc);
			mv.setViewName("common/msg");
		}
		else {
			mf.setMemberSeq(oneself.getMemberSeq());
			mf.setmFriendMateNo(friendInfo.getMemberSeq());
			mf.setmFriendNickname(friendInfo.getMemberNickname());
			mf.setmFriendType("일반");
			
			//중복값 확인을 위한 비교값 받기
			MemberFriend mfR = service.selectOne(mf);
			

			if(!m.getMemberNickname().equals(oneself.getMemberNickname())) { //자기자신 친구 추가 불가 로직
				if(mfR != null && mfR.getmFriendType().equals("일반")) {
					msg="관심친구가 등록되어 있습니다.";
					mv.addObject("msg", msg);
					mv.addObject("loc", loc);
					mv.setViewName("common/msg");
				}
				else if(mfR != null && mfR.getmFriendType().equals("차단")) {
					int result = service.updateTypeFriend(mf);
					mv.setViewName("redirect:/community/friendList");
				}
				else {
					int result = service.insertFriend(mf);
					mv.setViewName("redirect:/community/friendList");
				}
			}
			else {
				msg="자기 자신은 친구 추가가 불가능합니다.";
				mv.addObject("msg", msg);
				mv.addObject("loc", loc);
				mv.setViewName("common/msg");
			}
		}
		
		return mv;
	}
	
	@RequestMapping("/community/delFriend")
	private ModelAndView delFriend(MemberFriend mf) {
		
		int result = service.delFriend(mf);
		ModelAndView mv = new ModelAndView();
		mv.setViewName("redirect:/community/friendList");
		return mv;
	}
	
	@RequestMapping("/community/friendBlock")
	private ModelAndView friendBlock(Member m, HttpSession session) {
		
		Member oneself = (Member) session.getAttribute("loggedMember");
		Member friendInfo = service.mSelectOne(m);
		
		MemberFriend mf = new MemberFriend();
		
		ModelAndView mv = new ModelAndView();
		String msg="";
		String loc="/community/friendList";
		
		if(friendInfo == null) {
			msg="친구 닉네임이 없습니다.";
			mv.addObject("msg", msg);
			mv.addObject("loc", loc);
			mv.setViewName("common/msg");
		}
		else {

			mf.setMemberSeq(oneself.getMemberSeq());
			mf.setmFriendMateNo(friendInfo.getMemberSeq());
			mf.setmFriendNickname(friendInfo.getMemberNickname());
			mf.setmFriendType("차단");
			
			//중복값 확인을 위한 비교값 받기
			MemberFriend mfR = service.selectOne(mf);
			
			if(!m.getMemberNickname().equals(oneself.getMemberNickname())) { //자기자신 친구 차단 불가 로직
				if(mfR != null && mfR.getmFriendType().equals("차단")) {
					msg="차단친구가 등록되어 있습니다.";
					mv.addObject("msg", msg);
					mv.addObject("loc", loc);
					mv.setViewName("common/msg");
				}
				else if(mfR != null && mfR.getmFriendType().equals("일반")) {
					int result = service.updateTypeFriend(mf);
					mv.setViewName("redirect:/community/friendList");
				}
				else {
					int result = service.insertFriend(mf);
					mv.setViewName("redirect:/community/friendList");
				}
			}
			else {
				msg="자기 자신은 친구 차단이 불가능합니다.";
				mv.addObject("msg", msg);
				mv.addObject("loc", loc);
				mv.setViewName("common/msg");
			}
			
		}
		
		return mv;
	}
}
