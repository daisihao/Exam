package com.exam.entity;

public class RoleMenu {
	private int roleMenuID;
	private int menuID;
	private int roleID;
	private int roleBak1;
	private String roleBak2;
	private String roleBak3;

	public int getRoleMenuID() {
		return roleMenuID;
	}

	public void setRoleMenuID(int roleMenuID) {
		this.roleMenuID = roleMenuID;
	}

	public int getMenuID() {
		return menuID;
	}

	public void setMenuID(int menuID) {
		this.menuID = menuID;
	}

	public int getRoleID() {
		return roleID;
	}

	public void setRoleID(int roleID) {
		this.roleID = roleID;
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

	@Override
	public String toString() {
		return "RoleMenu [roleMenuID=" + roleMenuID + ", menuID=" + menuID
				+ ", roleID=" + roleID + ", roleBak1=" + roleBak1
				+ ", roleBak2=" + roleBak2 + ", roleBak3=" + roleBak3 + "]";
	}

	public RoleMenu(int roleMenuID, int menuID, int roleID, int roleBak1,
			String roleBak2, String roleBak3) {
		super();
		this.roleMenuID = roleMenuID;
		this.menuID = menuID;
		this.roleID = roleID;
		this.roleBak1 = roleBak1;
		this.roleBak2 = roleBak2;
		this.roleBak3 = roleBak3;
	}

	public RoleMenu() {
		super();
		// TODO 自动生成的构造函数存根
	}
}
