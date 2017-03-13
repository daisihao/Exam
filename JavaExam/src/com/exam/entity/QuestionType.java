package com.exam.entity;

public class QuestionType {
	private int questionTypeID;
	private String questionTypeName;
	private int questionBak1;
	private String questionBak2;
	private String questionBak3;

	public int getQuestionTypeID() {
		return questionTypeID;
	}

	public void setQuestionTypeID(int questionTypeID) {
		this.questionTypeID = questionTypeID;
	}

	public String getQuestionTypeName() {
		return questionTypeName;
	}

	public void setQuestionTypeName(String questionTypeName) {
		this.questionTypeName = questionTypeName;
	}

	public int getQuestionBak1() {
		return questionBak1;
	}

	public void setQuestionBak1(int questionBak1) {
		this.questionBak1 = questionBak1;
	}

	public String getQuestionBak2() {
		return questionBak2;
	}

	public void setQuestionBak2(String questionBak2) {
		this.questionBak2 = questionBak2;
	}

	public String getQuestionBak3() {
		return questionBak3;
	}

	public void setQuestionBak3(String questionBak3) {
		this.questionBak3 = questionBak3;
	}

	@Override
	public String toString() {
		return "QuestionType [questionTypeID=" + questionTypeID
				+ ", questionTypeName=" + questionTypeName + ", questionBak1="
				+ questionBak1 + ", questionBak2=" + questionBak2
				+ ", questionBak3=" + questionBak3 + "]";
	}

	public QuestionType(int questionTypeID, String questionTypeName,
			int questionBak1, String questionBak2, String questionBak3) {
		super();
		this.questionTypeID = questionTypeID;
		this.questionTypeName = questionTypeName;
		this.questionBak1 = questionBak1;
		this.questionBak2 = questionBak2;
		this.questionBak3 = questionBak3;
	}

	public QuestionType() {
		super();
		// TODO 自动生成的构造函数存根
	}
}
