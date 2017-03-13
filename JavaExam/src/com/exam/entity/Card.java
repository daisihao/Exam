package com.exam.entity;

import java.io.Serializable;
import java.sql.Date;
/**
 * 答题卡实体
 * @author czg
 *
 */
public class Card implements Serializable{
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 7479244529381734269L;
	//答题卡编号
	private int cardID;
	//试卷编号
	private int paperID;
	//学生编号
	private int studentID;
	//教师编号
	private int teacherID;
	//是否舞弊
	private int cardStatus;
	//试卷成绩
	private int cardScore;
	
	private int cardbak1;
	private String cardbak2;
	private String cardbak3;
	
	public Card() {
	}

	public Card(int cardID, int paperID, int studentID, int teacherID,
			int cardStatus, int cardScore) {
		super();
		this.cardID = cardID;
		this.paperID = paperID;
		this.studentID = studentID;
		this.teacherID = teacherID;
		this.cardStatus = cardStatus;
		this.cardScore = cardScore;
	}


	public int getCardID() {
		return cardID;
	}


	public void setCardID(int cardID) {
		this.cardID = cardID;
	}


	public int getPaperID() {
		return paperID;
	}


	public void setPaperID(int paperID) {
		this.paperID = paperID;
	}


	public int getStudentID() {
		return studentID;
	}


	public void setStudentID(int studentID) {
		this.studentID = studentID;
	}


	public int getTeacherID() {
		return teacherID;
	}


	public void setTeacherID(int teacherID) {
		this.teacherID = teacherID;
	}


	public int getCardStatus() {
		return cardStatus;
	}


	public void setCardStatus(int cardStatus) {
		this.cardStatus = cardStatus;
	}


	public int getCardScore() {
		return cardScore;
	}


	public void setCardScore(int cardScore) {
		this.cardScore = cardScore;
	}


	public int getCardbak1() {
		return cardbak1;
	}

	public void setCardbak1(int cardbak1) {
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

	@Override
	public String toString() {
		return "Card [cardID=" + cardID + ", paperID=" + paperID
				+ ", studentID=" + studentID + ", teacherID=" + teacherID
				+ ", cardStatus=" + cardStatus + ", cardScore=" + cardScore
				+ "]";
	}
	
	
}
