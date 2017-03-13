package com.exam.entity;

import java.io.Serializable;
/**
 * 专业实体
 * @author czg
 *
 */
public class Major implements Serializable{
	/**
	 * 
	 */
	private static final long serialVersionUID = -8640135383376578160L;
	//专业编号
	private int majorID;
	//专业名称
	private String majorName;
	//专业描述
	private String majorDescribe;
	//专业所属学院
	private int majorDepartment;
	private int majorBak1;
	private String majorBak2;
	private String majorBak3;
	public Major(int majorID, String majorName, String majorDescribe,
			int majorDepartment) {
		super();
		this.majorID = majorID;
		this.majorName = majorName;
		this.majorDescribe = majorDescribe;
		this.majorDepartment = majorDepartment;
	}
	public Major() {
	}
	@Override
	public String toString() {
		return "Major [majorID=" + majorID + ", majorName=" + majorName
				+ ", majorDescribe=" + majorDescribe + ", majorDepartment="
				+ majorDepartment + ", majorBak1=" + majorBak1 + ", majorBak2="
				+ majorBak2 + ", majorBak3=" + majorBak3 + "]";
	}
	public int getMajorID() {
		return majorID;
	}
	public void setMajorID(int majorID) {
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
	public int getMajorDepartment() {
		return majorDepartment;
	}
	public void setMajorDepartment(int majorDepartment) {
		this.majorDepartment = majorDepartment;
	}
	public int getMajorBak1() {
		return majorBak1;
	}
	public void setMajorBak1(int majorBak1) {
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
	
}
