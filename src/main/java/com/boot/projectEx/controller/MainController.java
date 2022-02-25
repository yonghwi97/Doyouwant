package com.boot.projectEx.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MainController {
	//index로 이동
	@RequestMapping("/")
	public String index() {
		return "index";
	}
	
	@RequestMapping("/mypage/mypage")
	public String mypage() {
		return "/mypage/mypage";
	}
	
}
