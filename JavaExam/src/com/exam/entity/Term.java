package com.exam.entity;

public class Term {
	private int termID;
	private String termName;
	private int totalHour;
	private String beginTime;
	private String endTime;
	private int termBak1;
	private String termBak2;
	private String termBak3;

	public int getTermID() {
		return termID;
	}

	public void setTermID(int termID) {
		this.termID = termID;
	}

	public String getTermName() {
		return termName;
	}

	public void setTermName(String termName) {
		this.termName = termName;
	}

	public int getTotalHour() {
		return totalHour;
	}

	public void setTotalHour(int totalHour) {
		this.totalHour = totalHour;
	}

	public String getBeginTime() {
		return beginTime;
	}

	public void setBeginTime(String beginTime) {
		this.beginTime = beginTime;
	}

	public String getEndTime() {
		return endTime;
	}

	public void setEndTime(String endTime) {
		this.endTime = endTime;
	}

	public int getTermBak1() {
		return termBak1;
	}

	public void setTermBak1(int termBak1) {
		this.termBak1 = termBak1;
	}

	public String getTermBak2() {
		return termBak2;
	}

	public void setTermBak2(String termBak2) {
		this.termBak2 = termBak2;
	}

	public String getTermBak3() {
		return termBak3;
	}

	public void setTermBak3(String termBak3) {
		this.termBak3 = termBak3;
	}

	@Override
	public String toString() {
		return "Term [termID=" + termID + ", termName=" + termName
				+ ", totalHour=" + totalHour + ", beginTime=" + beginTime
				+ ", endTime=" + endTime + ", termBak1=" + termBak1
				+ ", termBak2=" + termBak2 + ", termBak3=" + termBak3 + "]";
	}

	public Term(int termID, String termName, int totalHour, String beginTime,
			String endTime, int termBak1, String termBak2, String termBak3) {
		super();
		this.termID = termID;
		this.termName = termName;
		this.totalHour = totalHour;
		this.beginTime = beginTime;
		this.endTime = endTime;
		this.termBak1 = termBak1;
		this.termBak2 = termBak2;
		this.termBak3 = termBak3;
	}

	public Term() {
		super();
		// TODO 自动生成的构造函数存根
	}

}
