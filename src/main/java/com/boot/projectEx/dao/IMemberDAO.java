package com.boot.projectEx.dao;

import java.util.ArrayList;
import java.util.HashMap;

import com.boot.projectEx.model.MemberVO;



public interface IMemberDAO {
	MemberVO login(HashMap<String, Object> map);
	String memIdCheck(String memId);
	void signUp(MemberVO vo);
}
