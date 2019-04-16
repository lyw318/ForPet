package com.forpet.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.forpet.common.PageBarFactoryHYS;
import com.forpet.model.vo.BoardSearch;
import com.forpet.model.vo.Member;
import com.forpet.model.vo.MemberFriend;
import com.forpet.model.vo.MemberMsg;
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
		
		System.out.println(m.getMemberNickname());
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

					//쪽지 수신차단 풀기 로직
					MemberMsg mm = new MemberMsg();
					mm.setMemberNickname(friendInfo.getMemberNickname());
					mm.setmMsgRcvNickname(oneself.getMemberNickname());
					mm.setmMsgType("일반");
					service.mmUpdateType(mm);
					
					mv.setViewName("redirect:/community/friendList");
				}
				else {
					int result = service.insertFriend(mf);
					
					//쪽지 수신차단 풀기 로직
					MemberMsg mm = new MemberMsg();
					mm.setMemberNickname(friendInfo.getMemberNickname());
					mm.setmMsgRcvNickname(oneself.getMemberNickname());
					mm.setmMsgType("일반");
					service.mmUpdateType(mm);
					
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

					//쪽지 수신차단 하기 로직
					MemberMsg mm = new MemberMsg();
					mm.setMemberNickname(friendInfo.getMemberNickname());
					mm.setmMsgRcvNickname(oneself.getMemberNickname());
					mm.setmMsgType("차단");
					service.mmUpdateType(mm);
					
					mv.setViewName("redirect:/community/friendList");
				}
				else {
					int result = service.insertFriend(mf);
					
					//쪽지 수신차단 하기 로직
					MemberMsg mm = new MemberMsg();
					mm.setMemberNickname(friendInfo.getMemberNickname());
					mm.setmMsgRcvNickname(oneself.getMemberNickname());
					mm.setmMsgType("차단");
					service.mmUpdateType(mm);
					
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
	
	@RequestMapping("/community/msgSendWindow")
	private ModelAndView msgSendWindow(Member m, HttpSession session) {

		Member oneself = (Member) session.getAttribute("loggedMember");
		Member sendUserInfo = service.mSelectOne(m);
		
		ModelAndView mv = new ModelAndView();
		mv.addObject("sendUserInfo", sendUserInfo);
		mv.setViewName("community/msgSendWindow");
		return mv;
	}

	@RequestMapping("/community/msgList")
	private ModelAndView msgList(HttpSession session) {

		Member oneself = (Member) session.getAttribute("loggedMember");
		
		MemberMsg mm = new MemberMsg();
		mm.setMemberNickname(oneself.getMemberNickname());
		//List<MemberMsg> mmResult = service.mmSelectList(mm);
		
		ModelAndView mv = new ModelAndView();
		//mv.addObject("mmList",mmResult);
		mv.setViewName("myPage/community/msgList");
		return mv;
	}

	@RequestMapping("/community/msgList.do")
	private ModelAndView msgListAjax(HttpSession session, BoardSearch bs, String viewNo, HttpServletRequest request) {
		
		bs.parsing(5);
		
		
		//본인한테 온 메세지 출력을 위한 로직
		Member oneself = (Member) session.getAttribute("loggedMember");
		MemberMsg mm = new MemberMsg();
		mm.setMemberNickname(oneself.getMemberNickname());
		mm.setmMsgType("일반");
		
		int mmCount = service.mmCount(mm);//총 메세지 갯수
		List<MemberMsg> mmResult = service.mmSelectList(mm,bs);//메세지 데이터
		
		//페이징 처리
		String mmPage = PageBarFactoryHYS.getPageBarAjax(mmCount, bs, request.getContextPath()+"/community/msgList.do");
		
		ModelAndView mv = new ModelAndView();
		mv.addObject("mmPage",mmPage);
		mv.addObject("mmCount",mmCount);
		mv.addObject("mmList",mmResult);
		mv.setViewName("myPage/community/msgListAjax/msgListAjax");
		return mv;
	}
	
	@RequestMapping("/community/msgListView")
	private ModelAndView msgListView(MemberMsg mm) {
		
		MemberMsg mmOne = service.mmSelectOne(mm);
		
		//'읽음'상태로 업데이트 로직
		int upResult = service.mmUpdateRead(mm);
		
		ModelAndView mv = new ModelAndView();
		mv.addObject("mmOne", mmOne);
		mv.setViewName("myPage/community/msgListView");
		return mv;
	}
	
	@RequestMapping("/community/insertMsg")
	private ModelAndView insertMsg(MemberMsg mm) {

		int result = service.insertMsg(mm);
		
		String msg="";
		String loc="/community/msgList";
		if(result>0) {
			msg="메세지 보내기 성공";
			
		}
		else {
			msg="메세지 보내기 실패";
		}
		
		ModelAndView mv = new ModelAndView();
		mv.addObject("msg",msg);
		mv.addObject("loc",loc);
		mv.setViewName("community/msgSendWindow");
		return mv;
	}
	
	@RequestMapping(value="/community/delMsg.do", produces="application/text; charset=utf8")
	@ResponseBody
	private String delMsg(int[] msgDelListNo) {
		String msg = "";
		int result = 0;
		int resultCo = 0;
		if(msgDelListNo != null) {
			MemberMsg mm = new MemberMsg();
			result = msgDelListNo.length;
			for(int i=0;i<msgDelListNo.length;i++) {
				mm.setmMsgSeq(msgDelListNo[i]);
				service.delMsg(mm);
				resultCo++;
			}
		}
		msg = result + " 개 쪽지 중 " + resultCo + " 개 쪽지가 삭제 되었습니다."; 
		return msg;
	}
	
	@RequestMapping(value="/community/msgBlock.do", produces="application/text; charset=utf8")
	@ResponseBody
	private String msgBlock(int[] msgBlockNo, HttpSession session) {
		
		Member oneself = (Member) session.getAttribute("loggedMember");
		Member m = new Member();
		
		String result = "";
		String msg = "";
		if(msgBlockNo != null) {
			MemberMsg mm = new MemberMsg();
			MemberMsg mmOne = new MemberMsg();
			MemberFriend mf = new MemberFriend();
			int ufresult = 0;
			int resultCo = 0;
			for(int i=0;i<msgBlockNo.length;i++) {
				mm.setmMsgSeq(msgBlockNo[i]);
				mmOne = service.mmSelectOne(mm);
				mmOne.setmMsgType("차단");
				service.mmUpdateType(mmOne);
				
				m.setMemberNickname(mmOne.getMemberNickname());
				Member friendInfo = service.mSelectOne(m);
				
				mf.setMemberSeq(oneself.getMemberSeq());
				mf.setmFriendMateNo(friendInfo.getMemberSeq());
				mf.setmFriendNickname(friendInfo.getMemberNickname());
				mf.setmFriendType("차단");
				
				ufresult = service.updateTypeFriend(mf);
				if(!(ufresult>0)) {
					service.insertFriend(mf);
				}
				resultCo++;
			}
			result = mmOne.getMemberNickname();
		}
		msg = result + " 님을 차단했습니다.";
		return msg;
	}
	
}
