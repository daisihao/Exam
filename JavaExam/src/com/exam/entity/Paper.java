package com.exam.entity;

import java.io.Serializable;

/**
 * 试卷实体
 * @author czg
 *
 */
public class Paper implements Serializable{
	
	/**
	 * 
	 */
	private static final long serialVersionUID = -4045992518390674268L;
	//试卷主键
	private int paperID;
	//试卷编号，具备实际意义
	private String paperNO;
	//考试日期
	private String paperBeginDate;
	//考试开始时间
	private String paperBeginTime;
	//试卷总分数
	private int paperTotalScore;
	//考试时间
	private int paperTotalTime;
	//试卷难度
	private String paperDifficulty;
	//试卷类型
	private String paperType;
	//考场声明
	private String paperDeclareRule;
	//试卷是否禁用
	private int paperStatus;
	//出卷老师
	private int teacherID;
	//试卷生成日期
	private String paperCreateTime;
	private int paperBak1;
	private String paperBak2;
	private String paperBak3;
	
	public Paper() {
	}
	public Paper(int paperID, String paperNO, String paperBeginDate,
			String paperBeginTime, int paperTotalScore, int paperTotalTime,
			String paperDifficulty, String paperType, String paperDeclareRule,
			int paperStatus) {
		super();
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
	}
	@Override
	public String toString() {
		return "Paper [paperID=" + paperID + ", paperNO=" + paperNO
				+ ", paperBeginDate=" + paperBeginDate + ", paperBeginTime="
				+ paperBeginTime + ", paperTotalScore=" + paperTotalScore
				+ ", paperTotalTime=" + paperTotalTime + ", paperDifficulty="
				+ paperDifficulty + ", paperType=" + paperType
				+ ", paperDeclareRule=" + paperDeclareRule + ", paperStatus="
				+ paperStatus + "]";
	}
	public int getPaperID() {
		return paperID;
	}
	public void setPaperID(int paperID) {
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
	public int getPaperTotalScore() {
		return paperTotalScore;
	}
	public void setPaperTotalScore(int paperTotalScore) {
		this.paperTotalScore = paperTotalScore;
	}
	public int getPaperTotalTime() {
		return paperTotalTime;
	}
	public void setPaperTotalTime(int paperTotalTime) {
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
	public int getPaperStatus() {
		return paperStatus;
	}
	public void setPaperStatus(int paperStatus) {
		this.paperStatus = paperStatus;
	}
	public int getTeacherID() {
		return teacherID;
	}
	public void setTeacherID(int teacherID) {
		this.teacherID = teacherID;
	}
	public String getPaperCreateTime() {
		return paperCreateTime;
	}
	public void setPaperCreateTime(String paperCreateTime) {
		this.paperCreateTime = paperCreateTime;
	}
	public int getPaperBak1() {
		return paperBak1;
	}
	public void setPaperBak1(int paperBak1) {
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
	
}
