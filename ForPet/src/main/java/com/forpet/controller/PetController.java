
package com.forpet.controller;

import java.io.File;
import java.sql.Date;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestHeader;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.forpet.model.vo.Member;
import com.forpet.model.vo.Pet;
import com.forpet.service.PetService;

@Controller
public class PetController {

	private Logger logger=LoggerFactory.getLogger(PetController.class);
	
	@Autowired
	private PetService service;
	
	
	@RequestMapping("/pet/petUpdate.do")
	public ModelAndView petUpdateEnd(int id, HttpSession session,Model model) {
		Pet re=service.selectOne(id);
		
		//date변환하는 곳
		SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd");
		String petBirthStr=sdf.format(re.getPetBirth());
		
		ModelAndView mv=new ModelAndView();
		mv.setViewName("pet/petUpdate");
		mv.addObject("pet",re);
		mv.addObject("petBirthStr",petBirthStr);
		return mv;
	}

	@RequestMapping("/pet/petUpdateEnd.do")
	public ModelAndView updateEnd(String petType2, String petType, String petName, String oriFile, int petSeq,
			String petBirth, String memberSeq,MultipartFile petRenamedImage,HttpSession session, HttpServletRequest re) throws ParseException {
		Pet p=new Pet();
		p.setPetType(petType);
		p.setPetType2(petType2);
		p.setPetName(petName);
		p.setPetSeq(petSeq);
		p.setMemberSeq(Integer.parseInt(memberSeq));
		SimpleDateFormat birth=new SimpleDateFormat("yyyy/MM/dd");
		petBirth=petBirth.replaceAll("-", "/");
		p.setPetBirth(birth.parse(petBirth));
		
		ModelAndView mv=new ModelAndView();
		String saveDir=re.getSession().getServletContext().getRealPath("/resources/upload/petProfile");
		File dir=new File(saveDir);
		if(!dir.exists()){
			dir.mkdirs();
		}
		//단일 파일 
				if(petRenamedImage !=null && !petRenamedImage.isEmpty()) {
					String oriFileName=petRenamedImage.getOriginalFilename();
					String ext=oriFileName.substring(oriFileName.indexOf("."));
					SimpleDateFormat sdf=new SimpleDateFormat("yyyy_MM_dd_HHmmssSSS");
					int rndNum=(int)(Math.random()*1000);
					String reNamedFile=sdf.format(new Date(System.currentTimeMillis()))+"_"+rndNum+ext;
					try {
						petRenamedImage.transferTo(new File(saveDir+"/"+reNamedFile));
						p.setPetRenamedImage(reNamedFile);				
					}catch(Exception e) {
						e.printStackTrace();
					}
				}
				else
				{
					p.setPetRenamedImage(oriFile);
				}
				re.setAttribute("pet",p);
				System.out.println(p);
				int result= service.updatePet(p);
				String msg="";
				String loc="/pet/petList.do";
				if(result>0) {
					msg="반려동물 수정 성공";
					
					
				}else {
					msg="반려동물 수정 실패";
				}
				mv.addObject("msg",msg);
				mv.addObject("loc",loc);
				mv.setViewName("common/msg");
				return mv;
		
	}
	
	@RequestMapping("/pet/petDel.do")
	public String petDel(int petSeq) {
		int result=service.delete(petSeq);
		
		return "redirect:/";
	}
	
	@RequestMapping("/pet/petEnroll.do")
	public String petEnroll() {
		return "pet/petEnroll";
	}
	
	@RequestMapping("/pet/petList.do")
	public ModelAndView petList(HttpSession session) {
		Member m=(Member)session.getAttribute("loggedMember");
		ModelAndView mv=new ModelAndView();
		List<Pet> list=service.selectList(m);
		mv.addObject("list",list);
		mv.setViewName("pet/petList");
		return mv;
	}
	
	@RequestMapping("/pet/petEnrollEnd.do")
	public ModelAndView petEnrollEnd(String petType2, String petType, String petName, 
			String petBirth, int memberSeq, MultipartFile petRenamedImage, HttpServletRequest re) throws ParseException{
		
		Map map=re.getParameterMap();
		System.out.println(map);
		Pet p=new Pet();
		p.setPetType(petType);
		p.setPetType2(petType2);
		p.setPetName(petName);
		p.setMemberSeq(memberSeq);
		SimpleDateFormat birth=new SimpleDateFormat("yyyy/MM/dd");
		petBirth=petBirth.replaceAll("-", "/");
		p.setPetBirth(birth.parse(petBirth));
		
		ModelAndView mv=new ModelAndView();
		System.out.println(petRenamedImage.getOriginalFilename());
		String saveDir=re.getSession().getServletContext().getRealPath("/resources/upload/petProfile");
		File dir=new File(saveDir);
		if(!dir.exists()){
			dir.mkdirs();
		}
		//단일 파일 
		if(!petRenamedImage.isEmpty()) {
			String oriFileName=petRenamedImage.getOriginalFilename();
			String ext=oriFileName.substring(oriFileName.indexOf("."));
			SimpleDateFormat sdf=new SimpleDateFormat("yyyy_MM_dd_HHmmssSSS");
			int rndNum=(int)(Math.random()*1000);
			String reNamedFile=sdf.format(new Date(System.currentTimeMillis()))+"_"+rndNum+ext;
			try {
				petRenamedImage.transferTo(new File(saveDir+"/"+reNamedFile));
				p.setPetRenamedImage(reNamedFile);				
			}catch(Exception e) {
				e.printStackTrace();
			}
		}
		
		//이 구문은 리스트 보일 때
		re.setAttribute("pet",p);
		
		int result= service.insertPet(p);
		String msg="";
		String loc="/pet/petList.do";
		if(result>0) {
			msg="반려동물 등록 성공";
		}else {
			msg="반려동물 등록 실패";
		}
		mv.addObject("msg",msg);
		mv.addObject("loc",loc);
		mv.setViewName("common/msg");
		//return "pet/petEnrollEnd";
		return mv;
	}
	
	
}
