package com.boot.projectEx.controller;

import java.util.HashMap;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.boot.projectEx.model.MemberVO;
import com.boot.projectEx.service.MemberService;

@Controller
public class MemberController {
	// DI 설정
	@Autowired //MemberService와 연결 import랑 다름
	MemberService service;	
	
	//로그인 폼으로 이동
	@RequestMapping("/loginForm")
	public String loginForm() {
		
		return "/member/login";
	}
	
	//로그인
	@ResponseBody // 바디객체에 호출
	@RequestMapping("/login")
	public String login(@RequestParam HashMap<String, Object> param,
						HttpSession session) {
		
		// DB에서 아이디 패승워드 확인

		
		MemberVO resultMember = service.login(param);
		
		String result = "fail";
		
		if(resultMember != null) {
			session.setAttribute("sid", resultMember.getMemId());
			 result = "ok";
		}

		return result;
	}
	
	//로그아웃
	@RequestMapping("/logout")
	public String logout(HttpSession session) {
		
		// DB에서 아이디 패승워드 확인

		session.invalidate();

		return "redirect:/";
	}
	
	//회원가입 폼으로 이동
	@RequestMapping("/signUpForm")
	public String joinForm() {
		
		return "/member/signup";
	}
	
	@RequestMapping("/signUp")
	public String signUp(MemberVO vo) {
		System.out.println("signUp" + vo);
		service.signUp(vo);

		return "redirect:/";
	}
	
	@ResponseBody
	@RequestMapping(value = "/idcheck")
	public String idCheck(@RequestBody String paramData) {

		 System.out.println(paramData);
		/* JSONObject json = new JsonObject(paramData) */
		String checkVar = "no_use";

		String memId_result = service.memIdCheck(paramData);
		
		if(memId_result != null) {
			// System.out.println("use : " + memId_result);
			checkVar = "use";
		}
		return checkVar;
	}
}
