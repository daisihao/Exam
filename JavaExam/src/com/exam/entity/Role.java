package com.exam.entity;

public class Role {
	private int roleID;
	private String roleName;
	private int roleBak1;
	private String roleBak2;
	private String roleBak3;

	public int getRoleID() {
		return roleID;
	}

	public void setRoleID(int roleID) {
		this.roleID = roleID;
	}

	public String getRoleName() {
		return roleName;
	}

	public void setRoleName(String roleName) {
		this.roleName = roleName;
	}

	public int getRoleBak1() {
		return roleBak1;
	}

	public void setRoleBak1(int roleBak1) {
		this.roleBak1 = roleBak1;
	}

	public String getRoleBak2() {
		return roleBak2;
	}

	public void setRoleBak2(String roleBak2) {
		this.roleBak2 = roleBak2;
	}

	public String getRoleBak3() {
		return roleBak3;
	}

	public void setRoleBak3(String roleBak3) {
		this.roleBak3 = roleBak3;
	}

	public Role(int roleID, String roleName, int roleBak1, String roleBak2,
			String roleBak3) {
		super();
		this.roleID = roleID;
		this.roleName = roleName;
		this.roleBak1 = roleBak1;
		this.roleBak2 = roleBak2;
		this.roleBak3 = roleBak3;
	}

	public Role() {
		super();
		// TODO 自动生成的构造函数存根
	}

	@Override
	public String toString() {
		return "Role [roleID=" + roleID + ", roleName=" + roleName
				+ ", roleBak1=" + roleBak1 + ", roleBak2=" + roleBak2
				+ ", roleBak3=" + roleBak3 + "]";
	}
}
