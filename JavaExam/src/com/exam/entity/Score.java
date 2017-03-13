package com.exam.entity;

public class Score {
	private int scoreID;
	private int studentID;
	private int paperID;
	private int subID;
	private int score;
	private int teacherID;
	private String paperDate;
	private int scoreBak1;
	private String scorebak2;
	private String scorebak3;

	public int getScoreID() {
		return scoreID;
	}

	public void setScoreID(int scoreID) {
		this.scoreID = scoreID;
	}

	public int getStudentID() {
		return studentID;
	}

	public void setStudentID(int studentID) {
		this.studentID = studentID;
	}

	public int getPaperID() {
		return paperID;
	}

	public void setPaperID(int paperID) {
		this.paperID = paperID;
	}

	public int getSubID() {
		return subID;
	}

	public void setSubID(int subID) {
		this.subID = subID;
	}

	public int getScore() {
		return score;
	}

	public void setScore(int score) {
		this.score = score;
	}

	public int getTeacherID() {
		return teacherID;
	}

	public void setTeacherID(int teacherID) {
		this.teacherID = teacherID;
	}

	public String getPaperDate() {
		return paperDate;
	}

	public void setPaperDate(String paperDate) {
		this.paperDate = paperDate;
	}

	public int getScoreBak1() {
		return scoreBak1;
	}

	public void setScoreBak1(int scoreBak1) {
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

	@Override
	public String toString() {
		return "Score [scoreID=" + scoreID + ", studentID=" + studentID
				+ ", paperID=" + paperID + ", subID=" + subID + ", score="
				+ score + ", teacherID=" + teacherID + ", paperDate="
				+ paperDate + ", scoreBak1=" + scoreBak1 + ", scorebak2="
				+ scorebak2 + ", scorebak3=" + scorebak3 + "]";
	}

	public Score(int scoreID, int studentID, int paperID, int subID, int score,
			int teacherID, String paperDate, int scoreBak1, String scorebak2,
			String scorebak3) {
		super();
		this.scoreID = scoreID;
		this.studentID = studentID;
		this.paperID = paperID;
		this.subID = subID;
		this.score = score;
		this.teacherID = teacherID;
		this.paperDate = paperDate;
		this.scoreBak1 = scoreBak1;
		this.scorebak2 = scorebak2;
		this.scorebak3 = scorebak3;
	}

	public Score() {
		super();
		// TODO 自动生成的构造函数存根
	}
	
}
