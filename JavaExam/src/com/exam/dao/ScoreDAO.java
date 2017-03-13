package com.exam.dao;

import java.util.List;
import java.util.Map;

import com.exam.entity.Score;

public interface ScoreDAO {
	/*
	 * 查询学生的考试成绩
	 */
	public List<Score> selectList(Map<String,Object> scoreMap);
	
}
