package com.exam.view;

public class TeacherVO {
	private String teacherID;
	private String teacherName;
	private String teacherAccount;
	private String teacherPwd;
	private String teacherSex;
	private String teacherMajor;
	private String teacherDepatment;
	private String teacherPhone;
	private String teacherEmail;
	private String teacherRole;
	private String teacherPic;
	private String teacherIsDelete;
	private String teacherBak1;
	private String teacherBak2;
	private String teacherBak3;
	public String getTeacherID() {
		return teacherID;
	}
	public void setTeacherID(String teacherID) {
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
	public String getTeacherMajor() {
		return teacherMajor;
	}
	public void setTeacherMajor(String teacherMajor) {
		this.teacherMajor = teacherMajor;
	}
	public String getTeacherDepatment() {
		return teacherDepatment;
	}
	public void setTeacherDepatment(String teacherDepatment) {
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
	public String getTeacherRole() {
		return teacherRole;
	}
	public void setTeacherRole(String teacherRole) {
		this.teacherRole = teacherRole;
	}
	public String getTeacherPic() {
		return teacherPic;
	}
	public void setTeacherPic(String teacherPic) {
		this.teacherPic = teacherPic;
	}
	public String getTeacherIsDelete() {
		return teacherIsDelete;
	}
	public void setTeacherIsDelete(String teacherIsDelete) {
		this.teacherIsDelete = teacherIsDelete;
	}
	public String getTeacherBak1() {
		return teacherBak1;
	}
	public void setTeacherBak1(String teacherBak1) {
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
	public TeacherVO(String teacherID, String teacherName,
			String teacherAccount, String teacherPwd, String teacherSex,
			String teacherMajor, String teacherDepatment, String teacherPhone,
			String teacherEmail, String teacherRole, String teacherPic,
			String teacherIsDelete, String teacherBak1, String teacherBak2,
			String teacherBak3) {
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
	public TeacherVO() {
		super();
		// TODO 自动生成的构造函数存根
	}
	@Override
	public String toString() {
		return "TeacherVO [teacherID=" + teacherID + ", teacherName="
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
}
