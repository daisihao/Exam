package com.exam.dao.impl;

import java.util.HashMap;
import java.util.Map;

import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.exam.dao.QuestionTypeDAO;
import com.exam.entity.QuestionType;

public class QuestionTypeDAOImpl extends SqlSessionDaoSupport implements QuestionTypeDAO {

	@Override
	public QuestionType selectOne(Map<String, Object> questionTypeMap) {
		
		return getSqlSession().selectOne("com.exam.dao.QuestionTypeDAO.selectOne", questionTypeMap);
	}
	/*public static void main(String[] args) {
		ApplicationContext ctx=new ClassPathXmlApplicationContext("classpath:applicationContext.xml");
		QuestionTypeDAO qdao = ctx.getBean("questionTypeDAOImpl", QuestionTypeDAO.class);
		Map<String,Object> questionTypeMap=new HashMap<String,Object>();
		questionTypeMap.put("questionTypeID", 1);
		QuestionType qt = qdao.selectOne(questionTypeMap);
		System.out.println(qt);
	}*/
}
