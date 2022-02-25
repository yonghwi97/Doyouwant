package com.boot.projectEx.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.boot.projectEx.model.CartVO;
import com.boot.projectEx.service.CartService;

@Controller
public class CartController {
	@Autowired
	CartService service;
	
	@RequestMapping("/product/insertCart")
	public String insertCart(CartVO vo, HttpSession session) {
		//로그인 성공시 설정한 세션 sid값 가져와서 memId에 저장
		String memId = (String)session.getAttribute("sid");
		
		//동일 상품이 존재하는지 확인
		vo.setMemId(memId);
		
		//동일 상품 존재하지 않으면 장바구니에 추가
		int count = service.checkPrdInCart(vo.getPrdNo(), memId);
		
		System.out.println("count = " + count);
		
		//존재하지 않으면 장바구니에 추가
		if(count == 0) {
			System.out.println("vo = " + vo);
			System.out.println("memId = " + vo.getMemId());
			System.out.println("prdNo = " + vo.getPrdNo());
			vo.setCount(1);
			System.out.println("count = " + vo.getCount());
			service.insertCart(vo);
			System.out.println("insertCart");
		}
		//존재하면 주문수량 변경
		else {
			int currentCount = service.getCount(vo);
			vo.setCount(currentCount + 1);
			System.out.println("updatetCart : " + vo);
			service.updateQtyInCart(vo);
		}
		
		//장바구니 목록 요청
		return "redirect:/product/cartList";
	}
	
	//장바구니 목록 보기
	@RequestMapping("/product/cartList")
	public String cartList(Model model, HttpSession session) {
		String memId = (String)session.getAttribute("sid");
		ArrayList<CartVO> cartList = service.cartList(memId);
		model.addAttribute("cartList", cartList);
		
		System.out.println("cartList = " + cartList);
		
		return "/product/basket";
	}
	
	//장바구니 삭제
	@ResponseBody
	@RequestMapping("/product/deleteCart")
	public int deleteCart(@RequestParam("prdNo") String prdNo, HttpSession session) {
		int result = 0;
		String memId = (String)session.getAttribute("sid");
		System.out.println(prdNo + ", " + memId);
		
		if(prdNo != null || memId != null) {
			int prdNum = Integer.parseInt(prdNo);
			System.out.println(prdNo);
			
			CartVO vo = new CartVO();
			vo.setPrdNo(prdNum);
			vo.setMemId(memId);
			
			service.deleteCart(vo);
		}
		
		return result;
	}
	
	@ResponseBody
	@RequestMapping("/product/updateCart")
	public String insertCart(@RequestParam("prdNo") String prdNo,
			@RequestParam("count") String count, HttpSession session) {
		//로그인 성공시 설정한 세션 sid값 가져와서 memId에 저장
		String memId = (String)session.getAttribute("sid");
		
		CartVO vo = new CartVO();
		vo.setCount(Integer.parseInt(count));
		vo.setPrdNo(Integer.parseInt(prdNo));
		vo.setMemId(memId);
		
		service.updateQtyInCart(vo);
		
		
		//장바구니 목록 요청
		return "success";
	}
}
