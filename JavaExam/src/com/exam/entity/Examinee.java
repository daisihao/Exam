package com.exam.entity;

import java.io.Serializable;

/**
 * 考试实体
 * @author czg
 *
 */
public class Examinee implements Serializable{
	/**
	 * 
	 */
	private static final long serialVersionUID = 4851076673195058539L;
	//考试编号
	private int examineeID;
	//学生编号
	private int studentID;
	//试卷编号
	private int paperID;
	public Examinee(int examineeID, int studentID, int paperID) {
		super();
		this.examineeID = examineeID;
		this.studentID = studentID;
		this.paperID = paperID;
	}
	public Examinee() {
	}
	public int getExamineeID() {
		return examineeID;
	}
	public void setExamineeID(int examineeID) {
		this.examineeID = examineeID;
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
	@Override
	public String toString() {
		return "Examinee [examineeID=" + examineeID + ", studentID="
				+ studentID + ", paperID=" + paperID + "]";
	}
	
}
