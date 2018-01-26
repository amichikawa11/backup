package com.internousdev.myec.dto;

/**
 * ログイン情報
 */

public class LoginDTO {

	private String loginId;

	private String loginPass;

	private String userName;

	private String userKana;

	private int sex;

	private String address;

	private String tellNumber;

	private String mail;

	private boolean loginFlg = false;

	public String getLoginId() {
		return loginId;
	}

	public void setLoginId(String loginId) {
		this.loginId = loginId;
	}

	public String getLoginPass() {
		return loginPass;
	}

	public void setLoginPass(String loginPass) {
		this.loginPass = loginPass;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getUserKana() {
		return userKana;
	}

	public void setUserKana(String userKana) {
		this.userKana = userKana;
	}

	public int getSex() {
		return sex;
	}

	public void setSex(int sex) {
		this.sex = sex;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getTellNumber() {
		return tellNumber;
	}

	public void setTellNumber(String tellNumber) {
		this.tellNumber = tellNumber;
	}


	public String getMail() {
		return mail;
	}

	public void setMail(String mail) {
		this.mail = mail;
	}

	public boolean isLoginFlg() {
		return loginFlg;
	}

	public void setLoginFlg(boolean loginFlg) {
		this.loginFlg = loginFlg;
	}




}
