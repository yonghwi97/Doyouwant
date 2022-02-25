package com.boot.projectEx.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.boot.projectEx.dao.ITodayDAO;
import com.boot.projectEx.model.TodayVO;

@Service
public class TodayService implements ITodayService {
	
		@Autowired
		@Qualifier("ITodayDAO")
		ITodayDAO dao;
		
		@Override
		public ArrayList<TodayVO> today(String interNo) {
			// TODO Auto-generated method stub
			

			return dao.today(interNo);
		}
}
