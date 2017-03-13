package com.exam.entity;

import java.io.Serializable;

/**
 * 
 * @author czg
 *
 */
public class Department implements Serializable{
	/**
	 * 
	 */
	private static final long serialVersionUID = -998817011094540896L;
	//学院编号
	private int departmentID;
	//学院名称
	private String departmetnName;
	//学院地址
	private String departAddress;
	//上级学院
	private int departmentMgr;
	//学院电话
	private String departmentTelephone;
	
	private int departmentBak1;
	private String departmentBak2;
	private String departmentBak3;
	
	public Department() {
	}

	public Department(int departmentID, String departmetnName,
			String departAddress, int departmentMgr,
			String departmentTelephone, int departmentBak1,
			String departmentBak2, String departmentBak3) {
		super();
		this.departmentID = departmentID;
		this.departmetnName = departmetnName;
		this.departAddress = departAddress;
		this.departmentMgr = departmentMgr;
		this.departmentTelephone = departmentTelephone;
		this.departmentBak1 = departmentBak1;
		this.departmentBak2 = departmentBak2;
		this.departmentBak3 = departmentBak3;
	}

	@Override
	public String toString() {
		return "Department [departmentID=" + departmentID + ", departmetnName="
				+ departmetnName + ", departAddress=" + departAddress
				+ ", departmentMgr=" + departmentMgr + ", departmentTelephone="
				+ departmentTelephone + ", departmentBak1=" + departmentBak1
				+ ", departmentBak2=" + departmentBak2 + ", departmentBak3="
				+ departmentBak3 + "]";
	}

	public int getDepartmentID() {
		return departmentID;
	}

	public void setDepartmentID(int departmentID) {
		this.departmentID = departmentID;
	}

	public String getDepartmetnName() {
		return departmetnName;
	}

	public void setDepartmetnName(String departmetnName) {
		this.departmetnName = departmetnName;
	}

	public String getDepartAddress() {
		return departAddress;
	}

	public void setDepartAddress(String departAddress) {
		this.departAddress = departAddress;
	}

	public int getDepartmentMgr() {
		return departmentMgr;
	}

	public void setDepartmentMgr(int departmentMgr) {
		this.departmentMgr = departmentMgr;
	}

	public String getDepartmentTelephone() {
		return departmentTelephone;
	}

	public void setDepartmentTelephone(String departmentTelephone) {
		this.departmentTelephone = departmentTelephone;
	}

	public int getDepartmentBak1() {
		return departmentBak1;
	}

	public void setDepartmentBak1(int departmentBak1) {
		this.departmentBak1 = departmentBak1;
	}

	public String getDepartmentBak2() {
		return departmentBak2;
	}

	public void setDepartmentBak2(String departmentBak2) {
		this.departmentBak2 = departmentBak2;
	}

	public String getDepartmentBak3() {
		return departmentBak3;
	}

	public void setDepartmentBak3(String departmentBak3) {
		this.departmentBak3 = departmentBak3;
	}
	
	
}
