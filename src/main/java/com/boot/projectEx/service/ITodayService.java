package com.boot.projectEx.service;

import java.util.ArrayList;

import com.boot.projectEx.model.TodayVO;

public interface ITodayService {
	ArrayList<TodayVO> today(String interNo);
}
