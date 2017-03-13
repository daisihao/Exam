package com.exam.view;

public class QuestionVO {
	private String questionID;
	private String subID;
	private String questionTypeID;
	private String questionDifficulty;
	private String questionStem;
	private String questionAnswerA;
	private String questionAnswerB;
	private String questionAnswerC;
	private String questionAnswerD;
	private String questionAnswerE;
	private String questionRightAnswer;
	private String questionScore;
	private String questionIsAudited;
	private String questionAuthor;
	private String questionAuditor;
	private String questionAuditDate;
	private String questionSetDate;
	private String questionMedia;
	public String getQuestionID() {
		return questionID;
	}
	public void setQuestionID(String questionID) {
		this.questionID = questionID;
	}
	public String getSubID() {
		return subID;
	}
	public void setSubID(String subID) {
		this.subID = subID;
	}
	public String getQuestionTypeID() {
		return questionTypeID;
	}
	public void setQuestionTypeID(String questionTypeID) {
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
	public String getQuestionScore() {
		return questionScore;
	}
	public void setQuestionScore(String questionScore) {
		this.questionScore = questionScore;
	}
	public String getQuestionIsAudited() {
		return questionIsAudited;
	}
	public void setQuestionIsAudited(String questionIsAudited) {
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
	public QuestionVO(String questionID, String subID, String questionTypeID,
			String questionDifficulty, String questionStem,
			String questionAnswerA, String questionAnswerB,
			String questionAnswerC, String questionAnswerD,
			String questionAnswerE, String questionRightAnswer,
			String questionScore, String questionIsAudited,
			String questionAuthor, String questionAuditor,
			String questionAuditDate, String questionSetDate,
			String questionMedia) {
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
	}
	public QuestionVO() {
		super();
	}
	@Override
	public String toString() {
		return "QuestionVO [questionID=" + questionID + ", subID=" + subID
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
				+ questionMedia + "]";
	}
}
