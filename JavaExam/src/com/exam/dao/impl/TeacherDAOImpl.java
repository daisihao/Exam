package com.exam.dao.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.exam.dao.TeacherDAO;
import com.exam.entity.Teacher;

public class TeacherDAOImpl extends SqlSessionDaoSupport implements TeacherDAO {

	@Override
	public List<Teacher> selecTeacher(Map<String, Object> teacherMap) {
		
		return getSqlSession().selectList("com.exam.dao.TeacherDAO.selectTeacher", teacherMap);
	}
	
	@Override
	public Teacher teacherLogin(Map<String, Object> teacherLoginMap) throws Exception{
		
		return getSqlSession().selectOne("com.exam.dao.TeacherDAO.teacherLogin", teacherLoginMap);
	}


}
