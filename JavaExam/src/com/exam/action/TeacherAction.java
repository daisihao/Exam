package com.exam.action;

import com.exam.service.TeacherService;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;









import com.exam.util.MD5;
import com.exam.view.MajorVO;
import com.exam.view.PaperVO;
import com.exam.view.QuestionVO;
import com.exam.view.ScoreByClassVO;
import com.exam.view.ScoreVO;
import com.exam.view.TeacherVO;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class TeacherAction extends ActionSupport {

	private static final long serialVersionUID = -7894565642188313572L;	
	private TeacherService teacherServiceImpl;
	
	private String account;
	private String password;
	private List<QuestionVO> selectAll;
	private List<PaperVO> selectAllPaper;
	private List<ScoreVO> scoreVOList;
	private List<MajorVO> majorVOList;
	private List<QuestionVO> selectQuestion;
	private List<ScoreByClassVO> scoreByClassVO;
	private String NO;
	private String paperNO;
	private String studentClass;
	private QuestionVO questionVO;
	//包含页面传入信息 如题目难度
	private PaperVO paperVO;
	public String getBeginDate() {
		return BeginDate;
	}

	public void setBeginDate(String beginDate) {
		BeginDate = beginDate;
	}

	public String getBeginTime() {
		return BeginTime;
	}

	public void setBeginTime(String beginTime) {
		BeginTime = beginTime;
	}

	private String BeginDate;
	private String BeginTime;
	
	public void setMajorVOList(List<MajorVO> majorVOList) {
		this.majorVOList = majorVOList;
	}
	
	public List<MajorVO> getMajorVOList() {
		return majorVOList;
	}

	public void setScoreVOList(List<ScoreVO> scoreVOList) {
		this.scoreVOList = scoreVOList;
	}
	
	public List<ScoreVO> getScoreVOList() {
		return scoreVOList;
	}

	public List<PaperVO> getSelectAllPaper() {
		return selectAllPaper;
	}

	public void setSelectAllPaper(List<PaperVO> selectAllPaper) {
		this.selectAllPaper = selectAllPaper;
	}

	private Map<String, Object> allTeacherMap=new HashMap<String, Object>();
	
	public Map<String, Object> getAllTeacherMap() {
		return allTeacherMap;
	}

	public void setAccount(String account) {
		this.account = account;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public void setQuestionMap(Map<String, Object> questionMap) {
		this.questionMap = questionMap;
	}


	//试卷总题目，所有数据
	private Map<String, Object> questionMap;
	
	public Map<String, Object> getQuestionMap() {
		return questionMap;
	}
	
	public PaperVO getPaperVO() {
		return paperVO;
	}

	public void setPaperVO(PaperVO paperVO) {
		this.paperVO = paperVO;
	}
	public void setTeacherServiceImpl(TeacherService teacherServiceImpl) {
		this.teacherServiceImpl = teacherServiceImpl;
	}


	private TeacherVO teacherVO;
	

	public TeacherVO getTeacherVO() {
		return teacherVO;
	}

	public void setTeacherVO(TeacherVO teacherVO) {
		this.teacherVO = teacherVO;
	}

	public String createExamPaper(){
		questionMap=new HashMap<String, Object>();
		String[] str=paperVO.getPaperBeginTime().split(" ");
		questionMap.put("paperBeginDate",str[0]);
		questionMap.put("paperNO", paperVO.getPaperNO());
		questionMap.put("paperBeginTime",str[1]);
		questionMap.put("paperTotalScore", paperVO.getPaperTotalScore());
		questionMap.put("teacherID", paperVO.getTeacherID());
		questionMap.put("paperTotalTime", paperVO.getPaperTotalTime());
		questionMap.put("paperDeclareRule", paperVO.getPaperDeclareRule());
		questionMap.put("paperDifficulty", paperVO.getPaperDifficulty());
		questionMap.put("paperType", "机试");
		questionMap.put("paperCreateTime", paperVO.getPaperCreateTime());
		questionMap.put("paperBak1", paperVO.getPaperBak1());
		selectQuestion = teacherServiceImpl.selectQuestion(questionMap);
		questionMap.put("result",selectQuestion);
		questionMap.put("paperNO", paperVO.getPaperNO());
		return "ok";
	}
	
	public String teacherLogin(){
		Map<String , Object> teacherLoginMap=new HashMap<String, Object>();
		try {
			teacherLoginMap.put("account", account);
			teacherLoginMap.put("password", MD5.GetMD5Code(password));
			teacherVO = teacherServiceImpl.teacherLogin(teacherLoginMap);
			Map<String, Object> session = ActionContext.getContext().getSession();
			session.put("teacherVO", teacherVO);
			return "ok";
		} catch (Exception e) {
			return "no";
		} 
	}
	public String teacherList(){
		List<TeacherVO> teachers = teacherServiceImpl.allTeacher();
//		System.out.println(teachers);
		allTeacherMap.put("teachers", teachers);
		return "success";
	}
	
	//修改后确认生成试卷
	public String create2(){		
		Date date=new Date();
		DateFormat format=new SimpleDateFormat("yyyyMMddHHmmss");
		String time=format.format(date);
		questionMap=new HashMap<String, Object>();
		questionMap.put("paperBeginDate",BeginDate);
		questionMap.put("paperNO", time);
		questionMap.put("paperBeginTime",BeginTime);
		questionMap.put("paperTotalScore", paperVO.getPaperTotalScore());
		questionMap.put("teacherID", paperVO.getTeacherID());
		questionMap.put("paperTotalTime", paperVO.getPaperTotalTime());
		questionMap.put("paperDeclareRule", paperVO.getPaperDeclareRule());
		questionMap.put("paperDifficulty", paperVO.getPaperDifficulty());
		questionMap.put("paperType", "机试");
		questionMap.put("paperCreateTime", paperVO.getPaperCreateTime());
		questionMap.put("paperBak1", paperVO.getPaperBak1());
		List<QuestionVO> questionList = new ArrayList<QuestionVO>();
		String[] str=NO.split(",");
		for(int i=0;i<str.length;i++){
			QuestionVO qvo=new QuestionVO();
			qvo.setQuestionID(str[i]);
			questionList.add(qvo);
		}
		questionMap.put("questionList", questionList);
		selectQuestion = teacherServiceImpl.createPaper2(questionMap);
		
		return "ok";
		
	}
	public String searchAll(){
		setSelectAll(teacherServiceImpl.selectAll());
		System.out.println(getSelectAll().size());
		return "success";
	}
	
	public String searchAllPaper(){
		setSelectAllPaper(teacherServiceImpl.selectAllPaper());	    
		System.out.println(selectAllPaper.size());
		return "success";		
	}

	public List<QuestionVO> getSelectAll() {
		return selectAll;
	}

	public void setSelectAll(List<QuestionVO> selectAll) {
		this.selectAll = selectAll;
	}
	/*
	 * 获得所有学生成绩
	 */
	public String searchAllScore(){
		scoreVOList=teacherServiceImpl.selectAllScore();
		return "success";
	}
	
	public String allMajors(){
		majorVOList=teacherServiceImpl.allMajors();
		return "success";
	}

	public List<QuestionVO> getSelectQuestion() {
		return selectQuestion;
	}

	public void setSelectQuestion(List<QuestionVO> selectQuestion) {
		this.selectQuestion = selectQuestion;
	}

	public String getNO() {
		return NO;
	}

	public void setNO(String nO) {
		NO = nO;
	}

	public String getPaperNO() {
		return paperNO;
	}

	public void setPaperNO(String paperNO) {
		this.paperNO = paperNO;
	}

	public List<ScoreByClassVO> getScoreByClassVO() {
		return scoreByClassVO;
	}

	public void setScoreByClassVO(List<ScoreByClassVO> scoreByClassVO) {
		this.scoreByClassVO = scoreByClassVO;
	}
	//同班成绩表
	public String allScoreByClass(){
		Map<String , Object> map=new HashMap<String, Object>();
		map.put("paperNO", paperNO);
		scoreByClassVO=teacherServiceImpl.allScoreByClass(map);
		return "ok";
	}

	public String getStudentClass() {
		return studentClass;
	}

	public void setStudentClass(String studentClass) {
		this.studentClass = studentClass;
	}

	public QuestionVO getQuestionVO() {
		return questionVO;
	}

	public void setQuestionVO(QuestionVO questionVO) {
		this.questionVO = questionVO;
	}
	//题库修改
	public String upadteQuestion(){
		Map<String , Object> map=new HashMap<String, Object>();
		map.put("questionDifficulty", questionVO.getQuestionDifficulty());
		map.put("questionTypeID", questionVO.getQuestionTypeID());
		map.put("questionScore", questionVO.getQuestionScore());
		map.put("questionAuthor", questionVO.getQuestionAuthor());
		map.put("questionAuditor", questionVO.getQuestionAuditor());
		map.put("questionStem", questionVO.getQuestionStem());
		map.put("questionIsAudited", questionVO.getQuestionIsAudited());
		map.put("questionAnswerA", questionVO.getQuestionAnswerA());
		map.put("questionAnswerB", questionVO.getQuestionAnswerB());
		map.put("questionAnswerC", questionVO.getQuestionAnswerC());
		map.put("questionAnswerD", questionVO.getQuestionAnswerD());
		map.put("questionAnswerE", questionVO.getQuestionAnswerE());
		map.put("questionRightAnswer", questionVO.getQuestionRightAnswer());
		map.put("questionID", questionVO.getQuestionID());
		int i = teacherServiceImpl.upadteQuestionService(map);
		allTeacherMap.put("result",i);
		return "ok";
	}
	
}
