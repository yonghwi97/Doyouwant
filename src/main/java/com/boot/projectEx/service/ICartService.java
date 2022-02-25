package com.boot.projectEx.service;

import java.util.ArrayList;
import java.util.HashMap;

import com.boot.projectEx.model.CartVO;
import com.boot.projectEx.model.MemberVO;

public interface ICartService {
	void insertCart(CartVO vo);
	int checkPrdInCart(int prdNo, String memId);
	void updateQtyInCart(CartVO vo);
	int getCount(CartVO vo);
	ArrayList<CartVO> cartList(String memId);
	
	void updateCart(CartVO vo);
	void deleteCart(CartVO vo);
	MemberVO getMemberInfo(String memId);
}
