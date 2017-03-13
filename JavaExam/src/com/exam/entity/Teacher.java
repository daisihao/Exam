package com.exam.entity;

public class Teacher {
	private int teacherID;
	private String teacherName;
	private String teacherAccount;
	private String teacherPwd;
	private String teacherSex;
	private int teacherMajor;
	private int teacherDepatment;
	private String teacherPhone;
	private String teacherEmail;
	private int teacherRole;
	private String teacherPic;
	private int teacherIsDelete;
	private int teacherBak1;
	private String teacherBak2;
	private String teacherBak3;

	public int getTeacherID() {
		return teacherID;
	}

	public void setTeacherID(int teacherID) {
		this.teacherID = teacherID;
	}

	public String getTeacherName() {
		return teacherName;
	}

	public void setTeacherName(String teacherName) {
		this.teacherName = teacherName;
	}

	public String getTeacherAccount() {
		return teacherAccount;
	}

	public void setTeacherAccount(String teacherAccount) {
		this.teacherAccount = teacherAccount;
	}

	public String getTeacherPwd() {
		return teacherPwd;
	}

	public void setTeacherPwd(String teacherPwd) {
		this.teacherPwd = teacherPwd;
	}

	public String getTeacherSex() {
		return teacherSex;
	}

	public void setTeacherSex(String teacherSex) {
		this.teacherSex = teacherSex;
	}

	public int getTeacherMajor() {
		return teacherMajor;
	}

	public void setTeacherMajor(int teacherMajor) {
		this.teacherMajor = teacherMajor;
	}

	public int getTeacherDepatment() {
		return teacherDepatment;
	}

	public void setTeacherDepatment(int teacherDepatment) {
		this.teacherDepatment = teacherDepatment;
	}

	public String getTeacherPhone() {
		return teacherPhone;
	}

	public void setTeacherPhone(String teacherPhone) {
		this.teacherPhone = teacherPhone;
	}

	public String getTeacherEmail() {
		return teacherEmail;
	}

	public void setTeacherEmail(String teacherEmail) {
		this.teacherEmail = teacherEmail;
	}

	public int getTeacherRole() {
		return teacherRole;
	}

	public void setTeacherRole(int teacherRole) {
		this.teacherRole = teacherRole;
	}

	public String getTeacherPic() {
		return teacherPic;
	}

	public void setTeacherPic(String teacherPic) {
		this.teacherPic = teacherPic;
	}

	public int getTeacherIsDelete() {
		return teacherIsDelete;
	}

	public void setTeacherIsDelete(int teacherIsDelete) {
		this.teacherIsDelete = teacherIsDelete;
	}

	public int getTeacherBak1() {
		return teacherBak1;
	}

	public void setTeacherBak1(int teacherBak1) {
		this.teacherBak1 = teacherBak1;
	}

	public String getTeacherBak2() {
		return teacherBak2;
	}

	public void setTeacherBak2(String teacherBak2) {
		this.teacherBak2 = teacherBak2;
	}

	public String getTeacherBak3() {
		return teacherBak3;
	}

	public void setTeacherBak3(String teacherBak3) {
		this.teacherBak3 = teacherBak3;
	}

	@Override
	public String toString() {
		return "Teacher [teacherID=" + teacherID + ", teacherName="
				+ teacherName + ", teacherAccount=" + teacherAccount
				+ ", teacherPwd=" + teacherPwd + ", teacherSex=" + teacherSex
				+ ", teacherMajor=" + teacherMajor + ", teacherDepatment="
				+ teacherDepatment + ", teacherPhone=" + teacherPhone
				+ ", teacherEmail=" + teacherEmail + ", teacherRole="
				+ teacherRole + ", teacherPic=" + teacherPic
				+ ", teacherIsDelete=" + teacherIsDelete + ", teacherBak1="
				+ teacherBak1 + ", teacherBak2=" + teacherBak2
				+ ", teacherBak3=" + teacherBak3 + "]";
	}

	public Teacher(int teacherID, String teacherName, String teacherAccount,
			String teacherPwd, String teacherSex, int teacherMajor,
			int teacherDepatment, String teacherPhone, String teacherEmail,
			int teacherRole, String teacherPic, int teacherIsDelete,
			int teacherBak1, String teacherBak2, String teacherBak3) {
		super();
		this.teacherID = teacherID;
		this.teacherName = teacherName;
		this.teacherAccount = teacherAccount;
		this.teacherPwd = teacherPwd;
		this.teacherSex = teacherSex;
		this.teacherMajor = teacherMajor;
		this.teacherDepatment = teacherDepatment;
		this.teacherPhone = teacherPhone;
		this.teacherEmail = teacherEmail;
		this.teacherRole = teacherRole;
		this.teacherPic = teacherPic;
		this.teacherIsDelete = teacherIsDelete;
		this.teacherBak1 = teacherBak1;
		this.teacherBak2 = teacherBak2;
		this.teacherBak3 = teacherBak3;
	}

	public Teacher() {
		super();
		// TODO 自动生成的构造函数存根
	}
}
