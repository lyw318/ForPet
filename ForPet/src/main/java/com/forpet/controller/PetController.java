
package com.forpet.controller;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;

import com.forpet.model.vo.Pet;
import com.forpet.service.PetService;

@Controller
public class PetController {

	private Logger logger=LoggerFactory.getLogger(PetController.class);
	
	@Autowired
	private PetService service;
	
	@RequestMapping("/pet/petEnroll.do")
	public String petEnroll() {
		return "pet/petEnroll";
	}
	
	/*@RequestMapping("/pet/petEnrollEnd.do")
	public String petEnrollEnd(Pet p, Model model, MultipartFile[] upFile, HttpServletRequest re) {
		int result= service.insertPet(p);
		String msg="";
		String loc="/";
		if(result>0) {
			msg="반려동물 등록 성공";
		}else {
			msg="반려동물 등록 실패";
		}
		model.addAttribute("msg",msg);
		model.addAttribute("loc",loc);
		return "pet/petEnrollEnd";
	}*/
	
	
}
