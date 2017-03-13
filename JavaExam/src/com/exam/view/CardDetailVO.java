package com.exam.view;

public class CardDetailVO {
	private String cardno;//答题卡详情编号
	private String studentAns;//学生答案
	private String trueAns;//参考答案
	private String check;//正确与否
	public String getCardno() {
		return cardno;
	}
	public void setCardno(String cardno) {
		this.cardno = cardno;
	}
	public String getStudentAns() {
		return studentAns;
	}
	public void setStudentAns(String studentAns) {
		this.studentAns = studentAns;
	}
	public String getTrueAns() {
		return trueAns;
	}
	public void setTrueAns(String trueAns) {
		this.trueAns = trueAns;
	}
	public String getCheck() {
		return check;
	}
	public void setCheck(String check) {
		this.check = check;
	}
	public CardDetailVO(String cardno, String studentAns, String trueAns, String check) {
		super();
		this.cardno = cardno;
		this.studentAns = studentAns;
		this.trueAns = trueAns;
		this.check = check;
	}
	public CardDetailVO() {
		super();
	}
	@Override
	public String toString() {
		return "CardDetailVO [cardno=" + cardno + ", studentAns=" + studentAns + ", trueAns=" + trueAns + ", check="
				+ check + "]";
	}
}
