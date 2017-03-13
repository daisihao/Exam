package com.exam.dao.impl;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.exam.dao.PaperDetailDAO;
import com.exam.entity.PaperDetail;
import com.exam.entity.Question;

public class PaperDetailDAOImpl extends SqlSessionDaoSupport implements PaperDetailDAO {

	@Override
	public void insert(PaperDetail paperDetail) {
		getSqlSession().insert("com.exam.dao.PaperDetailDAO.insertOne", paperDetail);
	}

	@Override
	public List<Question> selectPaper(Map<String,Object> map) {
		// TODO Auto-generated method stub
		List<Question> qlist=new ArrayList<Question>();
		qlist=getSqlSession().selectList("com.exam.dao.PaperDetailDAO.selectPaper",map);
	   return qlist;
	}

	@Override
	public void batchInsert(List<Map<String, Object>> list) {
		getSqlSession().insert("com.exam.dao.PaperDetailDAO.batchInsert", list);
	}
	
}
