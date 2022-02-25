package com.boot.projectEx.service;

import java.util.HashMap;

import org.springframework.stereotype.Service;

import com.boot.projectEx.model.MemberVO;

@Service
public interface IMemberService {
	MemberVO login(HashMap<String, Object> map);
	String memIdCheck(String memId);
	void signUp(MemberVO vo);
}
