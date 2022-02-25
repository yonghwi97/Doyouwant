package com.boot.projectEx.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.boot.projectEx.model.TodayVO;
import com.boot.projectEx.service.TodayService;

@Controller
public class TodayController {
	@Autowired
	TodayService service;

	// product/getFuniture/1001
	@RequestMapping("/product/getFuniture/{interNo}")
	public String today(@PathVariable String interNo, Model model) {
		System.out.println("interNo  = " + interNo);
		
		
		ArrayList<TodayVO> todayList = service.today(interNo);
		System.out.println("todayList = " + todayList);
		
		model.addAttribute("todayList", todayList);
		
		return "product/getFuniture";
	}
}
