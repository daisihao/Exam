package com.exam.dao;

import java.sql.SQLException;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSessionException;

import com.exam.entity.Student;

public interface StudentDAO {
	public Student selectOne(Map<String,Object> map);
	/**
	 * 查询所有学生
	 * @return
	 */
	public List<Student> selectAll();
	/*
	 * 学生登陆
	 * */
	public Student studentLogin(Map<String,Object> map) throws Exception;
	
	/*
	 * 学生修改密码
	 */
	public void studentChangePwd(Map<String,Object> map);
	/*
	 * 登录修改状态
	 * */
	public void loginStatus(Map<String,Object> map);
	/*
	 * 检测IP是否存在
	 * */
	public int checkIP(Map<String,Object> map);
	/*
	 * 根据班级查询学生
	 */
	public List<Student> selectAllByClass(Map<String,Object> map);
	
	//修改学生信息
	public void updateStudentDetail(Map<String,Object> map);
}
