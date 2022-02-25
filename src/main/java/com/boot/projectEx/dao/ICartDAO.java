package com.boot.projectEx.dao;

import java.util.ArrayList;
import java.util.HashMap;

import com.boot.projectEx.model.CartVO;
import com.boot.projectEx.model.MemberVO;

public interface ICartDAO {
	void insertCart(CartVO vo);
	int checkPrdInCart(HashMap<String, Object> map);
	void updateQtyInCart(CartVO vo);
	ArrayList<CartVO> cartList(String memId);
	
	void updateCart(CartVO vo);
	void deleteCart(CartVO vo);
	MemberVO getMemberInfo(String memId);
	
	int getCount(CartVO vo);
}
