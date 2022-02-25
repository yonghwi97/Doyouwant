package com.boot.projectEx.dao;

import java.util.ArrayList;

import com.boot.projectEx.model.TodayVO;

public interface ITodayDAO {
	ArrayList<TodayVO> today(String interNo);
}
