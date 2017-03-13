package com.exam.dao;

import java.util.Map;

import com.exam.entity.Department;

public interface DepartmentDAO {
	public Department selectOne(Map<String,Object> departmentMap);
}
