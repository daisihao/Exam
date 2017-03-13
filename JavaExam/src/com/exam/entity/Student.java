package com.exam.entity;

public class Student {
	private int studentID;
	private String studentNo;
	private String sutdentName;
	private String studentAccount;
	private String studentPwd;
	private String studentSex;
	private int studentAge;
	private String studentPhone;
	private String studentCollege;
	private String studentClass;
	private String studentEmail;
	private String studentAddress;
	private String studentPic;
	private int studentIsDelete;
	private int studentBak1;
	private String studentBak2;
	private String sudentBak3;

	public int getStudentID() {
		return studentID;
	}

	public void setStudentID(int studentID) {
		this.studentID = studentID;
	}

	public String getStudentNo() {
		return studentNo;
	}

	public void setStudentNo(String studentNo) {
		this.studentNo = studentNo;
	}

	public String getSutdentName() {
		return sutdentName;
	}

	public void setSutdentName(String sutdentName) {
		this.sutdentName = sutdentName;
	}

	public String getStudentAccount() {
		return studentAccount;
	}

	public void setStudentAccount(String studentAccount) {
		this.studentAccount = studentAccount;
	}

	public String getStudentPwd() {
		return studentPwd;
	}

	public void setStudentPwd(String studentPwd) {
		this.studentPwd = studentPwd;
	}

	public String getStudentSex() {
		return studentSex;
	}

	public void setStudentSex(String studentSex) {
		this.studentSex = studentSex;
	}

	public int getStudentAge() {
		return studentAge;
	}

	public void setStudentAge(int studentAge) {
		this.studentAge = studentAge;
	}

	public String getStudentPhone() {
		return studentPhone;
	}

	public void setStudentPhone(String studentPhone) {
		this.studentPhone = studentPhone;
	}

	public String getStudentCollege() {
		return studentCollege;
	}

	public void setStudentCollege(String studentCollege) {
		this.studentCollege = studentCollege;
	}

	public String getStudentClass() {
		return studentClass;
	}

	public void setStudentClass(String studentClass) {
		this.studentClass = studentClass;
	}

	public String getStudentEmail() {
		return studentEmail;
	}

	public void setStudentEmail(String studentEmail) {
		this.studentEmail = studentEmail;
	}

	public String getStudentAddress() {
		return studentAddress;
	}

	public void setStudentAddress(String studentAddress) {
		this.studentAddress = studentAddress;
	}

	public String getStudentPic() {
		return studentPic;
	}

	public void setStudentPic(String studentPic) {
		this.studentPic = studentPic;
	}

	public int getStudentIsDelete() {
		return studentIsDelete;
	}

	public void setStudentIsDelete(int studentIsDelete) {
		this.studentIsDelete = studentIsDelete;
	}

	public int getStudentBak1() {
		return studentBak1;
	}

	public void setStudentBak1(int studentBak1) {
		this.studentBak1 = studentBak1;
	}

	public String getStudentBak2() {
		return studentBak2;
	}

	public void setStudentBak2(String studentBak2) {
		this.studentBak2 = studentBak2;
	}

	public String getSudentBak3() {
		return sudentBak3;
	}

	public void setSudentBak3(String sudentBak3) {
		this.sudentBak3 = sudentBak3;
	}

	@Override
	public String toString() {
		return "Student [studentID=" + studentID + ", studentNo=" + studentNo
				+ ", sutdentName=" + sutdentName + ", studentAccount="
				+ studentAccount + ", studentPwd=" + studentPwd
				+ ", studentSex=" + studentSex + ", studentAge=" + studentAge
				+ ", studentPhone=" + studentPhone + ", studentCollege="
				+ studentCollege + ", studentClass=" + studentClass
				+ ", studentEmail=" + studentEmail + ", studentAddress="
				+ studentAddress + ", studentPic=" + studentPic
				+ ", studentIsDelete=" + studentIsDelete + ", studentBak1="
				+ studentBak1 + ", studentBak2=" + studentBak2
				+ ", sudentBak3=" + sudentBak3 + "]";
	}

	public Student() {
		super();
		// TODO 自动生成的构造函数存根
	}

	public Student(int studentID, String studentNo, String sutdentName,
			String studentAccount, String studentPwd, String studentSex,
			int studentAge, String studentPhone, String studentCollege,
			String studentClass, String studentEmail, String studentAddress,
			String studentPic, int studentIsDelete, int studentBak1,
			String studentBak2, String sudentBak3) {
		super();
		this.studentID = studentID;
		this.studentNo = studentNo;
		this.sutdentName = sutdentName;
		this.studentAccount = studentAccount;
		this.studentPwd = studentPwd;
		this.studentSex = studentSex;
		this.studentAge = studentAge;
		this.studentPhone = studentPhone;
		this.studentCollege = studentCollege;
		this.studentClass = studentClass;
		this.studentEmail = studentEmail;
		this.studentAddress = studentAddress;
		this.studentPic = studentPic;
		this.studentIsDelete = studentIsDelete;
		this.studentBak1 = studentBak1;
		this.studentBak2 = studentBak2;
		this.sudentBak3 = sudentBak3;
	}
}
