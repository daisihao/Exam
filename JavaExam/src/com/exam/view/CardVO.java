package com.exam.view;

public class CardVO {
	/*
	 * 答题卡VO
	 */
	//答题卡编号
	private String cardID;
	//试卷编号
	private String paperID;
	//学生编号
	private String studentID;
	//教师编号
	private String teacherID;
	//是否舞弊
	private String cardStatus;
	//试卷成绩
	private String cardScore;
	private String cardbak1;
	private String cardbak2;
	private String cardbak3;
	public String getCardID() {
		return cardID;
	}
	public void setCardID(String cardID) {
		this.cardID = cardID;
	}
	public String getPaperID() {
		return paperID;
	}
	public void setPaperID(String paperID) {
		this.paperID = paperID;
	}
	public String getStudentID() {
		return studentID;
	}
	public void setStudentID(String studentID) {
		this.studentID = studentID;
	}
	public String getTeacherID() {
		return teacherID;
	}
	public void setTeacherID(String teacherID) {
		this.teacherID = teacherID;
	}
	public String getCardStatus() {
		return cardStatus;
	}
	public void setCardStatus(String cardStatus) {
		this.cardStatus = cardStatus;
	}
	public String getCardScore() {
		return cardScore;
	}
	public void setCardScore(String cardScore) {
		this.cardScore = cardScore;
	}
	public String getCardbak1() {
		return cardbak1;
	}
	public void setCardbak1(String cardbak1) {
		this.cardbak1 = cardbak1;
	}
	public String getCardbak2() {
		return cardbak2;
	}
	public void setCardbak2(String cardbak2) {
		this.cardbak2 = cardbak2;
	}
	public String getCardbak3() {
		return cardbak3;
	}
	public void setCardbak3(String cardbak3) {
		this.cardbak3 = cardbak3;
	}
	public CardVO(String cardID, String paperID, String studentID,
			String teacherID, String cardStatus, String cardScore,
			String cardbak1, String cardbak2, String cardbak3) {
		super();
		this.cardID = cardID;
		this.paperID = paperID;
		this.studentID = studentID;
		this.teacherID = teacherID;
		this.cardStatus = cardStatus;
		this.cardScore = cardScore;
		this.cardbak1 = cardbak1;
		this.cardbak2 = cardbak2;
		this.cardbak3 = cardbak3;
	}
	public CardVO() {
		super();
	}
	@Override
	public String toString() {
		return "CardVO [cardID=" + cardID + ", paperID=" + paperID
				+ ", studentID=" + studentID + ", teacherID=" + teacherID
				+ ", cardStatus=" + cardStatus + ", cardScore=" + cardScore
				+ ", cardbak1=" + cardbak1 + ", cardbak2=" + cardbak2
				+ ", cardbak3=" + cardbak3 + "]";
	}
}
