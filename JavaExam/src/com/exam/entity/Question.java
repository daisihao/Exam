package com.exam.entity;

public class Question {
	private int questionID;
	private int subID;
	private int questionTypeID;
	private String questionDifficulty;
	private String questionStem;
	private String questionAnswerA;
	private String questionAnswerB;
	private String questionAnswerC;
	private String questionAnswerD;
	private String questionAnswerE;
	private String questionRightAnswer;
	private int questionScore;
	private int questionIsAudited;
	private String questionAuthor;
	private String questionAuditor;
	private String questionAuditDate;
	private String questionSetDate;
	private String questionMedia;
	private int questionBak1;
	private String questionBak2;
	private String questionBak3;

	public int getQuestionID() {
		return questionID;
	}

	public void setQuestionID(int questionID) {
		this.questionID = questionID;
	}

	public int getSubID() {
		return subID;
	}

	public void setSubID(int subID) {
		this.subID = subID;
	}

	public int getQuestionTypeID() {
		return questionTypeID;
	}

	public void setQuestionTypeID(int questionTypeID) {
		this.questionTypeID = questionTypeID;
	}

	public String getQuestionDifficulty() {
		return questionDifficulty;
	}

	public void setQuestionDifficulty(String questionDifficulty) {
		this.questionDifficulty = questionDifficulty;
	}

	public String getQuestionStem() {
		return questionStem;
	}

	public void setQuestionStem(String questionStem) {
		this.questionStem = questionStem;
	}

	public String getQuestionAnswerA() {
		return questionAnswerA;
	}

	public void setQuestionAnswerA(String questionAnswerA) {
		this.questionAnswerA = questionAnswerA;
	}

	public String getQuestionAnswerB() {
		return questionAnswerB;
	}

	public void setQuestionAnswerB(String questionAnswerB) {
		this.questionAnswerB = questionAnswerB;
	}

	public String getQuestionAnswerC() {
		return questionAnswerC;
	}

	public void setQuestionAnswerC(String questionAnswerC) {
		this.questionAnswerC = questionAnswerC;
	}

	public String getQuestionAnswerD() {
		return questionAnswerD;
	}

	public void setQuestionAnswerD(String questionAnswerD) {
		this.questionAnswerD = questionAnswerD;
	}

	public String getQuestionAnswerE() {
		return questionAnswerE;
	}

	public void setQuestionAnswerE(String questionAnswerE) {
		this.questionAnswerE = questionAnswerE;
	}

	public String getQuestionRightAnswer() {
		return questionRightAnswer;
	}

	public void setQuestionRightAnswer(String questionRightAnswer) {
		this.questionRightAnswer = questionRightAnswer;
	}

	public int getQuestionScore() {
		return questionScore;
	}

	public void setQuestionScore(int questionScore) {
		this.questionScore = questionScore;
	}

	public int getQuestionIsAudited() {
		return questionIsAudited;
	}

	public void setQuestionIsAudited(int questionIsAudited) {
		this.questionIsAudited = questionIsAudited;
	}

	public String getQuestionAuthor() {
		return questionAuthor;
	}

	public void setQuestionAuthor(String questionAuthor) {
		this.questionAuthor = questionAuthor;
	}

	public String getQuestionAuditor() {
		return questionAuditor;
	}

	public void setQuestionAuditor(String questionAuditor) {
		this.questionAuditor = questionAuditor;
	}

	public String getQuestionAuditDate() {
		return questionAuditDate;
	}

	public void setQuestionAuditDate(String questionAuditDate) {
		this.questionAuditDate = questionAuditDate;
	}

	public String getQuestionSetDate() {
		return questionSetDate;
	}

	public void setQuestionSetDate(String questionSetDate) {
		this.questionSetDate = questionSetDate;
	}

	public String getQuestionMedia() {
		return questionMedia;
	}

	public void setQuestionMedia(String questionMedia) {
		this.questionMedia = questionMedia;
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
		return "Question [questionID=" + questionID + ", subID=" + subID
				+ ", questionTypeID=" + questionTypeID
				+ ", questionDifficulty=" + questionDifficulty
				+ ", questionStem=" + questionStem + ", questionAnswerA="
				+ questionAnswerA + ", questionAnswerB=" + questionAnswerB
				+ ", questionAnswerC=" + questionAnswerC + ", questionAnswerD="
				+ questionAnswerD + ", questionAnswerE=" + questionAnswerE
				+ ", questionRightAnswer=" + questionRightAnswer
				+ ", questionScore=" + questionScore + ", questionIsAudited="
				+ questionIsAudited + ", questionAuthor=" + questionAuthor
				+ ", questionAuditor=" + questionAuditor
				+ ", questionAuditDate=" + questionAuditDate
				+ ", questionSetDate=" + questionSetDate + ", questionMedia="
				+ questionMedia + ", questionBak1=" + questionBak1
				+ ", questionBak2=" + questionBak2 + ", questionBak3="
				+ questionBak3 + "]";
	}

	public Question(int questionID, int subID, int questionTypeID,
			String questionDifficulty, String questionStem,
			String questionAnswerA, String questionAnswerB,
			String questionAnswerC, String questionAnswerD,
			String questionAnswerE, String questionRightAnswer,
			int questionScore, int questionIsAudited, String questionAuthor,
			String questionAuditor, String questionAuditDate,
			String questionSetDate, String questionMedia, int questionBak1,
			String questionBak2, String questionBak3) {
		super();
		this.questionID = questionID;
		this.subID = subID;
		this.questionTypeID = questionTypeID;
		this.questionDifficulty = questionDifficulty;
		this.questionStem = questionStem;
		this.questionAnswerA = questionAnswerA;
		this.questionAnswerB = questionAnswerB;
		this.questionAnswerC = questionAnswerC;
		this.questionAnswerD = questionAnswerD;
		this.questionAnswerE = questionAnswerE;
		this.questionRightAnswer = questionRightAnswer;
		this.questionScore = questionScore;
		this.questionIsAudited = questionIsAudited;
		this.questionAuthor = questionAuthor;
		this.questionAuditor = questionAuditor;
		this.questionAuditDate = questionAuditDate;
		this.questionSetDate = questionSetDate;
		this.questionMedia = questionMedia;
		this.questionBak1 = questionBak1;
		this.questionBak2 = questionBak2;
		this.questionBak3 = questionBak3;
	}

	public Question() {
		super();
		// TODO 自动生成的构造函数存根
	}
}
