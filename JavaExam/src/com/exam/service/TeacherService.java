package com.exam.service;

import java.util.List;
import java.util.Map;

import com.exam.view.MajorVO;
import com.exam.view.PaperVO;
import com.exam.view.QuestionVO;
import com.exam.view.ScoreByClassVO;
import com.exam.view.ScoreVO;
import com.exam.view.TeacherVO;

public interface TeacherService {
	
	/*
	 * 查询100分所有题目
	 * 传入map
	 * map里面三个键
	 * 每个键是2，4，6分的题号*/
	public List<QuestionVO> selectQuestion(Map<String, Object> currentMap);
	
	/*
	 * 查询所有的题目
	 * 显示在题库管理的页面上
	 * */
	public List<QuestionVO> selectAll();
	
	/*
	 * 教师登录
	 * 通过账号密码
	 * */
	public TeacherVO teacherLogin(Map<String , Object> teacherLoginMap) throws Exception;
	
	/**
	 * 获取所有教师信息
	 */
	public List<TeacherVO> allTeacher();
	
	/*获取所有的试卷信息
	 * 
	 *显示在试卷管理页面上 
	*/
	public List<PaperVO> selectAllPaper();
	
	/*
	 * 获取所有学生成绩
	 */
	public List<ScoreVO> selectAllScore();

	public List<MajorVO> allMajors();
	
	/*
	 * 修改后生成试卷
	 */
	public List<QuestionVO> createPaper2(Map<String , Object> map);
	//查询同一班级所有学生
	public List<ScoreByClassVO> allScoreByClass(Map<String, Object> map);
	
	//题库修改
	public int upadteQuestionService(Map<String, Object> map);
}
