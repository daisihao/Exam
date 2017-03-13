package com.exam.dao;

import java.util.List;
import java.util.Map;

import com.exam.entity.Teacher;

public interface TeacherDAO {
	public List<Teacher> selecTeacher(Map<String , Object> teacherMap);
	
	//教师登录
	public Teacher teacherLogin(Map<String, Object> teacherLoginMap) throws Exception;
}
