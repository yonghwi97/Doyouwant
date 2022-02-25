package com.boot.projectEx.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.boot.projectEx.model.InteriorVO;
import com.boot.projectEx.service.InteriorService;

@Controller
public class InteriorController {
	@Autowired
	InteriorService service;
	
	@RequestMapping("/interior")
	public String interior(Model model) {
		ArrayList<InteriorVO> interiorList = service.interior();
		System.out.println("interiorList = " + interiorList);
		
		model.addAttribute("interiorList", interiorList);
		
		return "product/bestInterior";
	}
}
