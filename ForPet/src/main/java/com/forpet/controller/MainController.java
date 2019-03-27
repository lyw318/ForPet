package com.forpet.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MainController {
	
	@RequestMapping("/main")
	public String mainPage() {
		return "main";
	}
	
	@RequestMapping("/main/defaultSection")
	public String defaultSection() {
		return "defaultSection";
	}
	
	@RequestMapping("/noticeAndEvent")
	public String noticeAndEvent() {
		return "main";
	}
}
