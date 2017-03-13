package com.exam.dao;

import java.util.Map;

import com.exam.entity.Examinee;

public interface ExamineeDAO {
	public Examinee selectOne(Map<String,Object> examineeMap);
}
