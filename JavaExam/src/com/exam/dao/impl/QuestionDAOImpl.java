package com.exam.dao.impl;


import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.exam.dao.QuestionDAO;
import com.exam.entity.Question;

public class QuestionDAOImpl extends SqlSessionDaoSupport implements QuestionDAO {

	@Override
	public Question selectOne(Map<String, Object> map) {
		
		return getSqlSession().selectOne("com.exam.dao.QuestionDAO.selectOne",map);
		
	}

	@Override
	public List<Question> selectAll() {
		
		return getSqlSession().selectList("com.exam.dao.QuestionDAO.selectAll");
	}

	@Override
	public List<Question> selectQueTwo(Map<String, Object> currentMap) {
		
		return getSqlSession().selectList("com.exam.dao.QuestionDAO.selectQueTwo",currentMap);
	}

	@Override
	public List<Question> selectQueFour(Map<String, Object> currentMap) {
		return getSqlSession().selectList("com.exam.dao.QuestionDAO.selectQueFour",currentMap);
	}

	@Override
	public List<Question> selectQueSix(Map<String, Object> currentMap) {
		return getSqlSession().selectList("com.exam.dao.QuestionDAO.selectQueSix",currentMap);
	}




/*	public static void main(String[] args) {

		ApplicationContext ctx=new ClassPathXmlApplicationContext("classpath:applicationContext.xml");
		QuestionDAO questionDAO = ctx.getBean("questionDAOImpl",QuestionDAO.class);
		Map<String, Object> currentMap=new HashMap<String, Object>();
		currentMap.put("currentTwo", 5);
		currentMap.put("currentFour", 5);
		currentMap.put("currentSix", 5);
		List<Question> list = questionDAO.selectQueTwo(currentMap);
		List<Question> list1 = questionDAO.selectQueFour(currentMap);
		List<Question> list2 = questionDAO.selectQueSix(currentMap);
		System.out.println(list.size());
		System.out.println(list1.size());
		System.out.println(list2.size());
	}*/

	@Override
	public int upadteQuestion(Map<String, Object> map) {
		return getSqlSession().update("com.exam.dao.QuestionDAO.upadteQuestion",map);

	}
}
