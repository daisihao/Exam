package com.exam.dao.impl;

import java.util.HashMap;
import java.util.Map;

import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.exam.dao.SubjectinfoDAO;
import com.exam.entity.Subjectinfo;

public class SubjectinfoDAOImpl extends SqlSessionDaoSupport implements SubjectinfoDAO {

	@Override
	public Subjectinfo selectOne(Map<String, Object> subjectinfoMap) {
		return getSqlSession().selectOne("com.exam.dao.SubjectinfoDAO.selectOne", subjectinfoMap);
	}
	/*public static void main(String[] args) {
		ApplicationContext ctx=new ClassPathXmlApplicationContext("classpath:applicationContext.xml");
		SubjectinfoDAO sdao = ctx.getBean("subjectinfoDAOImpl",SubjectinfoDAO.class);
		Map<String, Object> subjectinfoMap = new HashMap<String,Object>();
		subjectinfoMap.put("subID", 1);
		Subjectinfo sb = sdao.selectOne(subjectinfoMap);
		System.out.println(sb);
	}*/
}
