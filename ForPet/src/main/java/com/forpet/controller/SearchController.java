package com.forpet.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class SearchController {

	@RequestMapping("/main/search")
	public String searchpage()
	{
		return "/Search/search";
	}
}
