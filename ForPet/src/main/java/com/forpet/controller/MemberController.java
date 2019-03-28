package com.forpet.controller;

import java.io.IOException;

import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

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
		return "common/msg";
	}
	
	
	@RequestMapping("/member/checkEmail.do")
	public void checkEmail(String memberEmail, HttpServletResponse res)throws IOException{
		Member m=new Member();
		m.setMemberEmail(memberEmail);
		Member result=service.selectOne(m);
		boolean isOk=result!=null?false:true;
		res.getWriter().println(isOk);
		
	}
	
	
	
	
}
