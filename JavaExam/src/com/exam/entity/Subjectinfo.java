package com.exam.entity;

public class Subjectinfo {
	private int subID;
	private String subName;
	private int subBak1;
	private String subBak2;
	private String subBak3;

	public int getSubID() {
		return subID;
	}

	public void setSubID(int subID) {
		this.subID = subID;
	}

	public String getSubName() {
		return subName;
	}

	public void setSubName(String subName) {
		this.subName = subName;
	}

	public int getSubBak1() {
		return subBak1;
	}

	public void setSubBak1(int subBak1) {
		this.subBak1 = subBak1;
	}

	public String getSubBak2() {
		return subBak2;
	}

	public void setSubBak2(String subBak2) {
		this.subBak2 = subBak2;
	}

	public String getSubBak3() {
		return subBak3;
	}

	public void setSubBak3(String subBak3) {
		this.subBak3 = subBak3;
	}

	@Override
	public String toString() {
		return "Subjectinfo [subID=" + subID + ", subName=" + subName
				+ ", subBak1=" + subBak1 + ", subBak2=" + subBak2
				+ ", subBak3=" + subBak3 + "]";
	}

	public Subjectinfo(int subID, String subName, int subBak1, String subBak2,
			String subBak3) {
		super();
		this.subID = subID;
		this.subName = subName;
		this.subBak1 = subBak1;
		this.subBak2 = subBak2;
		this.subBak3 = subBak3;
	}

	public Subjectinfo() {
		super();
		// TODO 自动生成的构造函数存根
	}
}
