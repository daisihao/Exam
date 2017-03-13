package com.exam.dao.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.exam.dao.ScoreDAO;
import com.exam.entity.Score;

public class ScoreDAOImpl extends SqlSessionDaoSupport implements ScoreDAO {

	@Override
	public List<Score> selectList(Map<String, Object> scoreMap) {
		return getSqlSession().selectList("com.exam.dao.ScoreDAO.selectList", scoreMap);
	}
	/*public static void main(String[] args) {
		ApplicationContext ctx=new ClassPathXmlApplicationContext("classpath:applicationContext.xml");
		ScoreDAO sdao = ctx.getBean("scoreDAOImpl",ScoreDAO.class);
		Map<String, Object> scoreMap = new HashMap<String,Object>();
		scoreMap.put("studentID", 36);
		scoreMap.put("subID", 1);
		scoreMap.put("teacherID", 5);
		List<Score> slist = sdao.selectList(scoreMap);
		for(Score e:slist){
			System.out.println(e);
		}
	}*/
}
