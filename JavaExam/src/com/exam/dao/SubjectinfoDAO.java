package com.exam.dao;

import java.util.Map;

import com.exam.entity.Subjectinfo;

public interface SubjectinfoDAO {
	/*
	 * 通过课程ID查找课程名称
	 */
	public Subjectinfo selectOne(Map<String,Object> subjectinfoMap);
}
