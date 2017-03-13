package com.exam.dao;

import java.util.List;
import java.util.Map;

import com.exam.entity.Question;

public interface QuestionDAO {
	
	Question selectOne(Map<String, Object> map);
	
	List<Question> selectAll();
	
	public List<Question> selectQueTwo(Map<String, Object> currentMap);

	public List<Question> selectQueFour(Map<String, Object> currentMap);

	public List<Question> selectQueSix(Map<String, Object> currentMap);
	
	public int upadteQuestion(Map<String, Object> currentMap);
}
