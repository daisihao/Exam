package com.exam.view;

public class ScoreByClassVO {
	/*
	 * 存放同班学生成绩信息的VO
	 */
	private String paperDeclareRule;
	private String studentNO;
	private String studentName;//学生姓名
	private String paperNO;
	private String subName;//课程名称
	private String score;
	private String teacherName;//阅卷老师
	private String paperDate;
	private String paperType;//试卷类型
	private String paperDifficulty;
	private String studentClass;
	public String getPaperDeclareRule() {
		return paperDeclareRule;
	}
	public void setPaperDeclareRule(String paperDeclareRule) {
		this.paperDeclareRule = paperDeclareRule;
	}
	public String getStudentNO() {
		return studentNO;
	}
	public void setStudentNO(String studentNO) {
		this.studentNO = studentNO;
	}
	public String getStudentName() {
		return studentName;
	}
	public void setStudentName(String studentName) {
		this.studentName = studentName;
	}
	public String getPaperNO() {
		return paperNO;
	}
	public void setPaperNO(String paperNO) {
		this.paperNO = paperNO;
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
	public String getPaperDifficulty() {
		return paperDifficulty;
	}
	public void setPaperDifficulty(String paperDifficulty) {
		this.paperDifficulty = paperDifficulty;
	}
	public ScoreByClassVO(String paperDeclareRule, String studentNO,
			String studentName, String paperNO, String subName, String score,
			String teacherName, String paperDate, String paperType,
			String paperDifficulty) {
		super();
		this.paperDeclareRule = paperDeclareRule;
		this.studentNO = studentNO;
		this.studentName = studentName;
		this.paperNO = paperNO;
		this.subName = subName;
		this.score = score;
		this.teacherName = teacherName;
		this.paperDate = paperDate;
		this.paperType = paperType;
		this.paperDifficulty = paperDifficulty;
	}
	public ScoreByClassVO() {
		// TODO Auto-generated constructor stub
	}
	@Override
	public String toString() {
		return "ScoreByClassVO [paperDeclareRule=" + paperDeclareRule
				+ ", studentNO=" + studentNO + ", studentName=" + studentName
				+ ", paperNO=" + paperNO + ", subName=" + subName + ", score="
				+ score + ", teacherName=" + teacherName + ", paperDate="
				+ paperDate + ", paperType=" + paperType + ", paperDifficulty="
				+ paperDifficulty + "]";
	}
	public String getStudentClass() {
		return studentClass;
	}
	public void setStudentClass(String studentClass) {
		this.studentClass = studentClass;
	}


}
