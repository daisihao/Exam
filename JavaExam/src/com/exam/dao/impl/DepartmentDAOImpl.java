package com.exam.dao.impl;

import java.util.Map;

import org.mybatis.spring.support.SqlSessionDaoSupport;

import com.exam.dao.DepartmentDAO;
import com.exam.entity.Department;

public class DepartmentDAOImpl extends SqlSessionDaoSupport implements
		DepartmentDAO {

	@Override
	public Department selectOne(Map<String, Object> departmentMap) {
		return getSqlSession().selectOne(
				"com.exam.dao.DepartmentDAO.selectOne", departmentMap);
	}

	/*public static void main(String[] args) {
		ApplicationContext ctx = new ClassPathXmlApplicationContext(
				"classpath:applicationContext.xml");
		DepartmentDAO ddao = ctx.getBean("departmentDAOImpl",DepartmentDAO.class);
		Map<String, Object> departmentMap = new HashMap<String, Object>();
		departmentMap.put("departmentID", 1);
		Department department = ddao.selectOne(departmentMap);
		System.out.println(department);
	}*/
}
