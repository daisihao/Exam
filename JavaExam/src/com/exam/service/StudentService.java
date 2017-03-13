package com.exam.service;

import java.util.List;
import java.util.Map;

import com.exam.entity.Paper;
import com.exam.view.CardDetailVO;
import com.exam.view.CardVO;
import com.exam.view.PaperVO;
import com.exam.view.QuestionVO;
import com.exam.view.ScoreRankVO;
import com.exam.view.ScoreVO;
import com.exam.view.StudentVO;

public interface StudentService {
	/**
	 * 学生登录
	 * @throws Exception 
	 */
	public StudentVO studentLogin(Map<String , Object> studentLoginMap) throws Exception;
	public Map<Integer ,QuestionVO> selctPaper(Map<String, Object> map);
	
	//查询学生的考试成绩
	public List<ScoreVO> findScoreBy(Map<String, Object> map);
	/**
	 * 查询所有学生
	 * @return
	 */
	public List<StudentVO> allStudent();
	
	
	public List<PaperVO> SomePaper(Map<String, Object> map);
	/*
	 * 学生修改密码
	 * 
	 */
	public void studentChangePwd(Map<String, Object> map);
	/*
	 * 插入学生成绩
	 */
	public int insertScore(Map<String,Object> map);
	/*
	 * 将学生考试答题结果插入答题卡详细表
	 */
	public void insertList(String[] array,int paperID,int studentID,String[] array2);
	/*
	 * 通过paperID查询paper名字
	 * */
	public PaperVO selectByID(Map<String, Object> map);
	/*
	 * 通过cardID查询答题卡明细
	 */
	public List<CardDetailVO> searchCardDetailBy(Map<String,Object> map);
	/*
	 * 修改登陆状态
	 * */
	public void loginStatus(Map<String,Object> map);
	/*
	 * 查询IP是否存在
	 * */
	public int checkIP(Map<String, Object> map);
	/*
	 * 学生查看成绩排名
	 */
	public List<ScoreRankVO> searchScoreRank(Map<String,Object> map);
	
	/*通过学生的id查询学生的所有考试*/
	public  List<PaperVO> studentPaper(Map<String, Object> map);
	
	public CardVO selectOne(Map<String, Object> cardMap);

	//通过ID查找学生
	public StudentVO selectStudentByID(Map<String, Object> map2);

	
	//学生修改信息
	public void updateStudentDetail(Map<String,Object> map);

}
