package com.exam.view;

public class ScoreVO {
	/*
	 * 存放学生成绩信息的VO
	 */
	private String scoreID;
	private String studentID;
	private String studentName;//学生姓名
	private String paperID;
	private String subName;//课程名称
	private String score;
	private String teacherName;//阅卷老师
	private String paperDate;
	private String paperType;//试卷类型
	private String scoreBak1;
	private String scorebak2;
	private String scorebak3;
	public String getScoreID() {
		return scoreID;
	}
	public void setScoreID(String scoreID) {
		this.scoreID = scoreID;
	}
	
	public String getStudentID() {
		return studentID;
	}
	public void setStudentID(String studentID) {
		this.studentID = studentID;
	}
	public String getPaperID() {
		return paperID;
	}
	public void setPaperID(String paperID) {
		this.paperID = paperID;
	}
	
	public String getSubName() {
		return subName;
	}
	public void setSubName(String subName) {
		this.subName = subName;
	}
	public String getScore() {
		return score;
	}
	public void setScore(String score) {
		this.score = score;
	}
	
	public String getStudentName() {
		return studentName;
	}
	public void setStudentName(String studentName) {
		this.studentName = studentName;
	}
	public String getTeacherName() {
		return teacherName;
	}
	public void setTeacherName(String teacherName) {
		this.teacherName = teacherName;
	}
	public String getPaperDate() {
		return paperDate;
	}
	public void setPaperDate(String paperDate) {
		this.paperDate = paperDate;
	}
	
	public String getPaperType() {
		return paperType;
	}
	public void setPaperType(String paperType) {
		this.paperType = paperType;
	}
	public String getScoreBak1() {
		return scoreBak1;
	}
	public void setScoreBak1(String scoreBak1) {
		this.scoreBak1 = scoreBak1;
	}
	public String getScorebak2() {
		return scorebak2;
	}
	public void setScorebak2(String scorebak2) {
		this.scorebak2 = scorebak2;
	}
	public String getScorebak3() {
		return scorebak3;
	}
	public void setScorebak3(String scorebak3) {
		this.scorebak3 = scorebak3;
	}
	
	public ScoreVO(String scoreID, String studentID, String studentName,
			String paperID, String subName, String score, String teacherName,
			String paperDate, String paperType, String scoreBak1,
			String scorebak2, String scorebak3) {
		super();
		this.scoreID = scoreID;
		this.studentID = studentID;
		this.studentName = studentName;
		this.paperID = paperID;
		this.subName = subName;
		this.score = score;
		this.teacherName = teacherName;
		this.paperDate = paperDate;
		this.paperType = paperType;
		this.scoreBak1 = scoreBak1;
		this.scorebak2 = scorebak2;
		this.scorebak3 = scorebak3;
	}
	public ScoreVO() {
		super();
	}
	@Override
	public String toString() {
		return "ScoreVO [scoreID=" + scoreID + ", studentID=" + studentID
				+ ", studentName=" + studentName + ", paperID=" + paperID
				+ ", subName=" + subName + ", score=" + score
				+ ", teacherName=" + teacherName + ", paperDate=" + paperDate
				+ ", paperType=" + paperType + ", scoreBak1=" + scoreBak1
				+ ", scorebak2=" + scorebak2 + ", scorebak3=" + scorebak3 + "]";
	}
}
