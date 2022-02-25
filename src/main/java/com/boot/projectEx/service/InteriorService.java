package com.boot.projectEx.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.boot.projectEx.dao.IInteriorDAO;
import com.boot.projectEx.model.InteriorVO;

@Service
public class InteriorService implements IInteriorService {

	@Autowired
	@Qualifier("IInteriorDAO")
	IInteriorDAO dao;
	
	@Override
	public ArrayList<InteriorVO> interior() {
		// TODO Auto-generated method stub
		return dao.interior();
	}

}
