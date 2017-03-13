package com.exam.dao.impl;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.support.SqlSessionDaoSupport;

import com.exam.dao.MajorDAO;
import com.exam.entity.Major;

public class MajorDAOImpl extends SqlSessionDaoSupport implements MajorDAO {

	@Override
	public List<Major> selectAllMajors() {
		
		return getSqlSession().selectList("com.exam.dao.MajorDAO.selectAll");
	}

	@Override
	public Major selectOne(Map<String, Object> map) {
		
		return getSqlSession().selectOne("com.exam.dao.MajorDAO.selectOne",map);
	}
	@Override
	public Major selectOne2(Map<String, Object> map) {
		
		return getSqlSession().selectOne("com.exam.dao.MajorDAO.selectOne2",map);
	}

}
