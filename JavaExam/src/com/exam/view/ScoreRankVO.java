package com.exam.view;

public class ScoreRankVO {
	private String studentno;//学生学号
	private String studentName;//学生姓名
	private String paperDeclareRule;//考试科目
	private String paperBeginDate;//考试日期
	private String score;//学生成绩
	private String sortno;//成绩排名
	public String getStudentno() {
		return studentno;
	}
	public void setStudentno(String studentno) {
		this.studentno = studentno;
	}
	public String getStudentName() {
		return studentName;
	}
	public void setStudentName(String studentName) {
		this.studentName = studentName;
	}
	public String getPaperDeclareRule() {
		return paperDeclareRule;
	}
	public void setPaperDeclareRule(String paperDeclareRule) {
		this.paperDeclareRule = paperDeclareRule;
	}
	public String getPaperBeginDate() {
		return paperBeginDate;
	}
	public void setPaperBeginDate(String paperBeginDate) {
		this.paperBeginDate = paperBeginDate;
	}
	public String getScore() {
		return score;
	}
	public void setScore(String score) {
		this.score = score;
	}
	public String getSortno() {
		return sortno;
	}
	public void setSortno(String sortno) {
		this.sortno = sortno;
	}
	public ScoreRankVO(String studentno, String studentName, String paperDeclareRule, String paperBeginDate,
			String score, String sortno) {
		super();
		this.studentno = studentno;
		this.studentName = studentName;
		this.paperDeclareRule = paperDeclareRule;
		this.paperBeginDate = paperBeginDate;
		this.score = score;
		this.sortno = sortno;
	}
	public ScoreRankVO() {
		super();
	}
	@Override
	public String toString() {
		return "ScoreRankVO [studentno=" + studentno + ", studentName=" + studentName + ", paperDeclareRule="
				+ paperDeclareRule + ", paperBeginDate=" + paperBeginDate + ", score=" + score + ", sortno=" + sortno
				+ "]";
	}
}
