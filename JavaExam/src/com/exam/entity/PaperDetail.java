package com.exam.entity;

public class PaperDetail {
	private int paperDetailID;
	private int paperID;
	private int questionID;

	public int getPaperDetailID() {
		return paperDetailID;
	}

	public void setPaperDetailID(int paperDetailID) {
		this.paperDetailID = paperDetailID;
	}

	public int getPaperID() {
		return paperID;
	}

	public void setPaperID(int paperID) {
		this.paperID = paperID;
	}

	public int getQuestionID() {
		return questionID;
	}

	public void setQuestionID(int questionID) {
		this.questionID = questionID;
	}

	public PaperDetail() {
		super();
		// TODO 自动生成的构造函数存根
	}

	public PaperDetail(int paperDetailID, int paperID, int questionID) {
		super();
		this.paperDetailID = paperDetailID;
		this.paperID = paperID;
		this.questionID = questionID;
	}

	@Override
	public String toString() {
		return "PaperDetail [paperDetailID=" + paperDetailID + ", paperID="
				+ paperID + ", questionID=" + questionID + "]";
	}

}
