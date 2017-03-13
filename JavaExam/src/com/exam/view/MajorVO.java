package com.exam.view;

public class MajorVO {
	// 专业编号
	private String majorID;
	// 专业名称
	private String majorName;
	// 专业描述
	private String majorDescribe;
	// 专业所属学院
	private String majorDepartment;
	private String majorBak1;
	private String majorBak2;
	private String majorBak3;
	
	
	public MajorVO() {
		super();
	}
	public MajorVO(String majorID, String majorName, String majorDescribe,
			String majorDepartment, String majorBak1, String majorBak2,
			String majorBak3) {
		super();
		this.majorID = majorID;
		this.majorName = majorName;
		this.majorDescribe = majorDescribe;
		this.majorDepartment = majorDepartment;
		this.majorBak1 = majorBak1;
		this.majorBak2 = majorBak2;
		this.majorBak3 = majorBak3;
	}
	public String getMajorID() {
		return majorID;
	}
	public void setMajorID(String majorID) {
		this.majorID = majorID;
	}
	public String getMajorName() {
		return majorName;
	}
	public void setMajorName(String majorName) {
		this.majorName = majorName;
	}
	public String getMajorDescribe() {
		return majorDescribe;
	}
	public void setMajorDescribe(String majorDescribe) {
		this.majorDescribe = majorDescribe;
	}
	public String getMajorDepartment() {
		return majorDepartment;
	}
	public void setMajorDepartment(String majorDepartment) {
		this.majorDepartment = majorDepartment;
	}
	public String getMajorBak1() {
		return majorBak1;
	}
	public void setMajorBak1(String majorBak1) {
		this.majorBak1 = majorBak1;
	}
	public String getMajorBak2() {
		return majorBak2;
	}
	public void setMajorBak2(String majorBak2) {
		this.majorBak2 = majorBak2;
	}
	public String getMajorBak3() {
		return majorBak3;
	}
	public void setMajorBak3(String majorBak3) {
		this.majorBak3 = majorBak3;
	}
	@Override
	public String toString() {
		return "MajorVO [majorID=" + majorID + ", majorName=" + majorName
				+ ", majorDescribe=" + majorDescribe + ", majorDepartment="
				+ majorDepartment + ", majorBak1=" + majorBak1 + ", majorBak2="
				+ majorBak2 + ", majorBak3=" + majorBak3 + "]";
	}
	
}
