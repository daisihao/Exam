package com.exam.dao.impl;

import java.sql.SQLException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.exam.dao.StudentDAO;
import com.exam.entity.Student;
import com.exam.service.StudentService;
import com.exam.service.TeacherService;
import com.exam.view.QuestionVO;
import com.exam.view.StudentVO;

public class StudentDAOImpl extends SqlSessionDaoSupport implements StudentDAO {
	@Override
	public Student selectOne(Map<String, Object> map) {
		return getSqlSession().selectOne("com.exam.dao.StudentDAO.selectOne",
				map);
	}

	@Override
	public List<Student> selectAll() {
		return getSqlSession().selectList("com.exam.dao.StudentDAO.selectAll");
	}

	@Override
	public Student studentLogin(Map<String, Object> map) throws Exception{
		// TODO 自动生成的方法存根
		return getSqlSession().selectOne(
				"com.exam.dao.StudentDAO.studentLogin", map);
	}

	@Override
	public void studentChangePwd(Map<String, Object> map) {
		getSqlSession().update("com.exam.dao.StudentDAO.studentChangePwd", map);
		
	}

	@Override
	public void loginStatus(Map<String, Object> map) {
		getSqlSession().update("com.exam.dao.StudentDAO.loginStatus",map);
	}

	@Override
	public int checkIP(Map<String, Object> map) {
		return getSqlSession().selectOne("com.exam.dao.StudentDAO.ipCheck", map);
	}
	@Override
	public List<Student> selectAllByClass(Map<String, Object> map) {
		return getSqlSession().selectList("com.exam.dao.StudentDAO.selectAll",map);
	}

	@Override
	public void updateStudentDetail(Map<String, Object> map) {
		getSqlSession().selectList("com.exam.dao.StudentDAO.updateStudentDetail",map);	
	}
}
