package com.forpet.controller;

import java.io.IOException;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.forpet.model.vo.Member;
import com.forpet.service.MemberService;

@Controller
public class MemberController {

	private Logger logger=LoggerFactory.getLogger(MemberController.class);
	
	@Autowired
	private MemberService service;
	
	@Autowired
	private BCryptPasswordEncoder bcEcoder;
	
	@RequestMapping("/member/memberEnroll.do")
	public String memberEnroll() {
		return "member/memberEnroll";
	}
	
	@RequestMapping("/member/memberUpdate.do")
	public ModelAndView memberUpdateEnd(HttpSession session,Model model) {
		
		Member re=service.selectOne((Member)session.getAttribute("loggedMember"));
		
		ModelAndView mv=new ModelAndView();
		mv.setViewName("member/memberUpdate");
		mv.addObject("member",re);
		return mv;
	}
	
	@RequestMapping("/member/memberUpdateEnd.do")
	public ModelAndView updateEnd(Member m) {
		String rawPw=m.getMemberPassword();
		String enPw=bcEcoder.encode(rawPw);
		m.setMemberPassword(enPw);
		System.out.println(m);
		int result=service.update(m);
		String msg="";
		String loc="/member/update.do?memberEmail="+m.getMemberEmail();
		if(result>0) {
			msg="수정완료";
		}else {
			msg="수정실패";
		}
		ModelAndView mv=new ModelAndView();
		mv.setViewName("common/msg");
		mv.addObject("msg",msg);
		return mv;
		
	}
	
	@RequestMapping("member/memberDel.do")
	public String memberDel(Member m) {
		int result=service.delete(m);
		
		return "redirect:/";
	}
	
	@RequestMapping("/member/memberEnrollEnd.do")
	public String memberEnrollEnd(Member m,Model model) {
		String rawPw=m.getMemberPassword();
		String enPw=bcEcoder.encode(rawPw);
		m.setMemberPassword(enPw);
		
		int result=service.insertMember(m);
		String msg="";
		String loc="/";
		if(result>0) {
			msg="회원가입 완료";
		}else {
			msg="회원가입 실패";
		}
		model.addAttribute("msg",msg);
		model.addAttribute("loc",loc);
		return "member/memberEnrollEnd";
	}
	
	@RequestMapping("/member/memberLogin.do")
	public String login(Member m, Model model, HttpSession session) {
		Member result=service.selectOne(m);
		String msg="";
		String loc="/";
		
		try {
			throw new RuntimeException("test에러 ");
		}catch(RuntimeException e) {
			logger.error("로그인에러 ");
		}
		
		if(result!=null) {
			if(bcEcoder.matches(m.getMemberPassword(), result.getMemberPassword())) {
				msg="로그인 성공";
				session.setAttribute("loggedMember", result);
			}else {
				msg="비밀번호가 일치하지 않습니다";
			}
		}else {
			msg="아이디가 존재하지 않습니다";
		}
		
		model.addAttribute("msg",msg);
		model.addAttribute("loc",loc);
		return "common/msg";
	}
	
	@RequestMapping("/member/logOut.do")
	public String logOut(HttpSession session) {
		session.invalidate();
		return "redirect:/";
	}
	
	@RequestMapping("/member/checkEmail.do")
	public void checkEmail(String memberEmail, HttpServletResponse res)throws IOException{
		Member m=new Member();
		m.setMemberEmail(memberEmail);
		Member result=service.selectOne(m);
		boolean isOk=(result!=null)?false:true;
		res.getWriter().println(isOk);
		
	}
	
	
	
	
	
}
