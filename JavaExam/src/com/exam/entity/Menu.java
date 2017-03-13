package com.exam.entity;

import java.io.Serializable;

/**
 * 菜单实体
 * @author czg
 *
 */
public class Menu implements Serializable{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1324207124778020935L;
	//菜单编号
	private int menuID;
	private String menuName;
	private int menuPID;
	private String menuAction;
	private String menuIcon;
	private String dispaly;
	private int menuSort;
	private int menuBak1;
	private String menuBak2;
	private String menuBak3;
	
	public Menu() {
	}

	public Menu(int menuID, String menuName, int menuPID, String menuAction,
			String menuIcon, String dispaly, int menuSort, int menuBak1,
			String menuBak2, String menuBak3) {
		super();
		this.menuID = menuID;
		this.menuName = menuName;
		this.menuPID = menuPID;
		this.menuAction = menuAction;
		this.menuIcon = menuIcon;
		this.dispaly = dispaly;
		this.menuSort = menuSort;
		this.menuBak1 = menuBak1;
		this.menuBak2 = menuBak2;
		this.menuBak3 = menuBak3;
	}

	public int getMenuID() {
		return menuID;
	}

	public void setMenuID(int menuID) {
		this.menuID = menuID;
	}

	public String getMenuName() {
		return menuName;
	}

	public void setMenuName(String menuName) {
		this.menuName = menuName;
	}

	public int getMenuPID() {
		return menuPID;
	}

	public void setMenuPID(int menuPID) {
		this.menuPID = menuPID;
	}

	public String getMenuAction() {
		return menuAction;
	}

	public void setMenuAction(String menuAction) {
		this.menuAction = menuAction;
	}

	public String getMenuIcon() {
		return menuIcon;
	}

	public void setMenuIcon(String menuIcon) {
		this.menuIcon = menuIcon;
	}

	public String getDispaly() {
		return dispaly;
	}

	public void setDispaly(String dispaly) {
		this.dispaly = dispaly;
	}

	public int getMenuSort() {
		return menuSort;
	}

	public void setMenuSort(int menuSort) {
		this.menuSort = menuSort;
	}

	public int getMenuBak1() {
		return menuBak1;
	}

	public void setMenuBak1(int menuBak1) {
		this.menuBak1 = menuBak1;
	}

	public String getMenuBak2() {
		return menuBak2;
	}

	public void setMenuBak2(String menuBak2) {
		this.menuBak2 = menuBak2;
	}

	public String getMenuBak3() {
		return menuBak3;
	}

	public void setMenuBak3(String menuBak3) {
		this.menuBak3 = menuBak3;
	}

	@Override
	public String toString() {
		return "Menu [menuID=" + menuID + ", menuName=" + menuName
				+ ", menuPID=" + menuPID + ", menuAction=" + menuAction
				+ ", menuIcon=" + menuIcon + ", dispaly=" + dispaly
				+ ", menuSort=" + menuSort + ", menuBak1=" + menuBak1
				+ ", menuBak2=" + menuBak2 + ", menuBak3=" + menuBak3 + "]";
	}
	
	
}
