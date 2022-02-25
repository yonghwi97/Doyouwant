package com.boot.projectEx.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.boot.projectEx.model.InteriorVO;
import com.boot.projectEx.model.ProductVO;
import com.boot.projectEx.service.ProductService;

@Controller
public class ProductController {
	@Autowired
	ProductService service;
	
	@RequestMapping("/product/bestInterior") 
	public String bestInterior() {
		
		return "product/bestInterior";
	}
	
	@RequestMapping("/product/bestSeller") 
	public String bestSeller(Model model) {
		ArrayList<ProductVO> prdList = service.listAllProduct();
		model.addAttribute("prdList", prdList);
		
		System.out.println(prdList);
		
		return "product/bestSeller";
	}
	
	
	@RequestMapping("/product/basket") 
	public String basket() {
		
		return "product/basket";
	}
	
	@RequestMapping("/product/mypage") 
	public String mypage() {
		
		return "/product/mypage";
	}
	
	@RequestMapping("/product/getFuniture") 
	public String getFuniture() {
		
		return "product/getFuniture";
	}
	
	@RequestMapping("/product/productDetailView") 
	public String productView() {
		
		return "product/productDetailView";
	}
	
	@RequestMapping("/product/detailViewProduct/{prdNo}")
	public String detailViewProduct(@PathVariable("prdNo") String prdNo, Model model) {
		// 상품번호 전달하고, 해당 상품 정보 받아오기 
		ProductVO prd = service.detailViewProduct(prdNo);
		model.addAttribute("prd", prd);

		
		return "product/productDetailView";  // 상품 상세 정보 뷰 페이지
	}
	
	@RequestMapping("/product/listCtgProduct/") 
	public String listCtgProduct(@PathVariable String ctgId, Model model) {
		ArrayList<ProductVO> prdList = service.listCtgProduct(ctgId);
		model.addAttribute("prdList", prdList);
		
		return "product/productListView";
	}

}
