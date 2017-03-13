package com.exam.dao.impl;

import java.util.Map;

import org.mybatis.spring.support.SqlSessionDaoSupport;

import com.exam.dao.ExamineeDAO;
import com.exam.entity.Examinee;

public class ExamineeDAOImpl extends SqlSessionDaoSupport implements ExamineeDAO {

	@Override
	public Examinee selectOne(Map<String, Object> examineeMap) {
		return getSqlSession().selectOne("com.exam.dao.ExamineeDAO.selectOne", examineeMap);
	}
	/*public static void main(String[] args) {
		ApplicationContext ctx = new ClassPathXmlApplicationContext(
				"classpath:applicationContext.xml");
		ExamineeDAO edao = ctx.getBean("examineeDAOImpl",ExamineeDAO.class);
		Map<String, Object> examineeMap = new HashMap<String, Object>();
		examineeMap.put("examineeID", 1);
		Examinee e = edao.selectOne(examineeMap);
		System.out.println(e);
	}*/
}
