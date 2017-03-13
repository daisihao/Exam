package com.exam.dao;

import java.util.Map;

import com.exam.entity.QuestionType;

public interface QuestionTypeDAO {
	public QuestionType selectOne(Map<String,Object> questionTypeMap);
}
