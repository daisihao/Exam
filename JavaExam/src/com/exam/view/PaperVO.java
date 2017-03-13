package com.exam.view;

import java.io.Serializable;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;

import com.exam.entity.Card;


public class PaperVO implements Serializable{
	

	private static final long serialVersionUID = 8981869441068272244L;
//	static Date date=new Date();
//	static DateFormat format=new SimpleDateFormat("yyyyMMddHHmmss");
//	static String time=format.format(date);
	
	//考试的最后截止时间
	private String deadLine;
	//指定考生的试卷的答题卡是否纯在
	private Card isExist;
	//根据答题卡是否存在赋予不同的值
	private String exist;
	//获取考试截止时间
	private String endTime;
	//获取系统当前的日期
	private String currentDate;
	//获取系统当前的时间
	private String currentTime;	
	// 试卷主键
	private String paperID;
	// 试卷编号，具备实际意义
	private String paperNO;
	// 考试日期
	private String paperBeginDate;
	// 考试开始时间
	private String paperBeginTime;
	// 试卷总分数
	private String paperTotalScore=100+"";
	// 考试时间
	private String paperTotalTime;
	// 试卷难度
	private String paperDifficulty;
	// 试卷类型
	private String paperType="机试";
	// 考场声明
	private String paperDeclareRule;
	// 试卷是否禁用
	private String paperStatus;
	// 出卷老师
	private String teacherID;
	// 试卷生成日期
	private String teacherName;
	private String paperCreateTime;
	private String paperBak1;
	private String paperBak2;
	private String paperBak3;
	
	
	
	
	

	public String getExist() {
		return exist;
	}

	public void setExist(String exist) {
		this.exist = exist;
	}

	public String getDeadLine() {
		return deadLine;
	}

	public void setDeadLine(String deadLine) {
		this.deadLine = deadLine;
	}

	public Card getIsExist() {
		return isExist;
	}

	public void setIsExist(Card isExist) {
		this.isExist = isExist;
	}

	public String getEndTime() {
		return endTime;
	}

	public void setEndTime(String endTime) {
		this.endTime = endTime;
	}

	public String getTeacherName() {
		return teacherName;
	}

	public void setTeacherName(String teacherName) {
		this.teacherName = teacherName;
	}




	public PaperVO() {
		super();

	}

	public String getPaperID() {
		return paperID;
	}

	public void setPaperID(String paperID) {
		this.paperID = paperID;
	}

	public String getPaperNO() {
		return paperNO;
	}

	public void setPaperNO(String paperNO) {
		this.paperNO = paperNO;
	}

	public String getPaperBeginDate() {
		return paperBeginDate;
	}

	public void setPaperBeginDate(String paperBeginDate) {
		this.paperBeginDate = paperBeginDate;
	}

	public String getPaperBeginTime() {
		return paperBeginTime;
	}

	public void setPaperBeginTime(String paperBeginTime) {
		this.paperBeginTime = paperBeginTime;
	}

	public String getPaperTotalScore() {
		return paperTotalScore;
	}

	public void setPaperTotalScore(String paperTotalScore) {
		this.paperTotalScore = paperTotalScore;
	}

	public String getPaperTotalTime() {
		return paperTotalTime;
	}

	public void setPaperTotalTime(String paperTotalTime) {
		this.paperTotalTime = paperTotalTime;
	}

	public String getPaperDifficulty() {
		return paperDifficulty;
	}

	public void setPaperDifficulty(String paperDifficulty) {
		this.paperDifficulty = paperDifficulty;
	}

	public String getPaperType() {
		return paperType;
	}

	public void setPaperType(String paperType) {
		this.paperType = paperType;
	}

	public String getPaperDeclareRule() {
		return paperDeclareRule;
	}

	public void setPaperDeclareRule(String paperDeclareRule) {
		this.paperDeclareRule = paperDeclareRule;
	}

	public String getPaperStatus() {
		return paperStatus;
	}

	public void setPaperStatus(String paperStatus) {
		this.paperStatus = paperStatus;
	}
	
	public String getTeacherID() {
		return teacherID;
	}

	public void setTeacherID(String teacherID) {
		this.teacherID = teacherID;
	}

	public String getPaperCreateTime() {
		Date date=new Date();
		DateFormat format=new SimpleDateFormat("yyyy-MM-dd");
		String time=format.format(date); 
		return time;
	}

	public void setPaperCreateTime(String paperCreateTime) {
		Date date=new Date();
		DateFormat format=new SimpleDateFormat("yyyy-MM-dd");
		String time=format.format(date); 
		this.paperCreateTime =time;
	}

	public String getPaperBak1() {
		return paperBak1;
	}

	public void setPaperBak1(String paperBak1) {
		this.paperBak1 = paperBak1;
	}

	public String getPaperBak2() {
		return paperBak2;
	}

	public void setPaperBak2(String paperBak2) {
		this.paperBak2 = paperBak2;
	}

	public String getPaperBak3() {
		return paperBak3;
	}

	public void setPaperBak3(String paperBak3) {
		this.paperBak3 = paperBak3;
	}

	
	
	public String getCurrentDate() {
		return currentDate;
	}

	public void setCurrentDate(String currentDate) {
		this.currentDate = currentDate;
	}

	public String getCurrentTime() {
		return currentTime;
	}

	public void setCurrentTime(String currentTime) {
		this.currentTime = currentTime;
	}

	public PaperVO(String deadLine, Card isExist, String exist, String endTime,
			String currentDate, String currentTime, String paperID,
			String paperNO, String paperBeginDate, String paperBeginTime,
			String paperTotalScore, String paperTotalTime,
			String paperDifficulty, String paperType, String paperDeclareRule,
			String paperStatus, String teacherID, String teacherName,
			String paperCreateTime, String paperBak1, String paperBak2,
			String paperBak3) {
		super();
		this.deadLine = deadLine;
		this.isExist = isExist;
		this.exist = exist;
		this.endTime = endTime;
		this.currentDate = currentDate;
		this.currentTime = currentTime;
		this.paperID = paperID;
		this.paperNO = paperNO;
		this.paperBeginDate = paperBeginDate;
		this.paperBeginTime = paperBeginTime;
		this.paperTotalScore = paperTotalScore;
		this.paperTotalTime = paperTotalTime;
		this.paperDifficulty = paperDifficulty;
		this.paperType = paperType;
		this.paperDeclareRule = paperDeclareRule;
		this.paperStatus = paperStatus;
		this.teacherID = teacherID;
		this.teacherName = teacherName;
		this.paperCreateTime = paperCreateTime;
		this.paperBak1 = paperBak1;
		this.paperBak2 = paperBak2;
		this.paperBak3 = paperBak3;
	}

	@Override
	public String toString() {
		return "PaperVO [deadLine=" + deadLine + ", isExist=" + isExist
				+ ", exist=" + exist + ", endTime=" + endTime
				+ ", currentDate=" + currentDate + ", currentTime="
				+ currentTime + ", paperID=" + paperID + ", paperNO=" + paperNO
				+ ", paperBeginDate=" + paperBeginDate + ", paperBeginTime="
				+ paperBeginTime + ", paperTotalScore=" + paperTotalScore
				+ ", paperTotalTime=" + paperTotalTime + ", paperDifficulty="
				+ paperDifficulty + ", paperType=" + paperType
				+ ", paperDeclareRule=" + paperDeclareRule + ", paperStatus="
				+ paperStatus + ", teacherID=" + teacherID + ", teacherName="
				+ teacherName + ", paperCreateTime=" + paperCreateTime
				+ ", paperBak1=" + paperBak1 + ", paperBak2=" + paperBak2
				+ ", paperBak3=" + paperBak3 + "]";
	}

	

}
