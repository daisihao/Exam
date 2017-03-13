package com.exam.dao.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.exam.dao.PaperDAO;
import com.exam.entity.Paper;
import com.exam.service.StudentService;

public class PaperDAOImpl extends SqlSessionDaoSupport implements PaperDAO {

	@Override
	public int insert(Paper paper) {
		System.out.println(paper);
		getSqlSession().insert("com.exam.dao.PaperDAO.insertOne", paper);
		return paper.getPaperID();
	}

	@Override
	public List<Paper> select() {
		return getSqlSession().selectList("com.exam.dao.PaperDAO.selectAll");
	}

	@Override
	public List<Paper> select(Map<String, Object> map) {
		return getSqlSession().selectList("com.exam.dao.PaperDAO.selectSomePaper",map);
	}
	
	
	public static void main(String[] args) {
		ApplicationContext atx=new ClassPathXmlApplicationContext("classpath:applicationContext.xml");
		PaperDAO bean = atx.getBean("paperDAOImpl",PaperDAO.class);
		Map<String, Object> map=new HashMap<String, Object>();
		map.put("paperID", 32);
		//System.out.println(map);
		System.out.println(bean.select(map).get(0).getPaperType());
	}
	@Override
	public Paper selectByID(Map<String, Object> map) {
		// TODO 自动生成的方法存根
		return getSqlSession().selectOne("com.exam.dao.PaperDAO.selectSomePaper", map);
	}
	@Override
	public Paper selectPaperByNO(Map<String, Object> map){
		return getSqlSession().selectOne("com.exam.dao.PaperDAO.selectPaperByNO", map);
	}

	@Override
	public List<Paper> selectStu(Map<String, Object> map) {
		return getSqlSession().selectList("com.exam.dao.PaperDAO.selectAll", map);
	}

	@Override
	public Paper searchPaper(Map<String, Object> map) {
		return getSqlSession().selectOne("com.exam.dao.PaperDAO.selectAll", map);
	}
}
