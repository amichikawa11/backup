package com.internousdev.myec.action;

import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.opensymphony.xwork2.ActionSupport;

public class UserCreateConfirmAction extends ActionSupport implements SessionAware{

	/**
	 * login.jspのnameと同じ名前
	 */

	private String loginUserId;
	private String loginPassword;
	private String userName;
	private String userKana;
	private String sex;
	private String address;
	private String tellNumber;
	private String mail;


	public Map<String,Object> session;
	private String errorMassage;


	/**
	 * 入力項目が空白でなければ、確認画面で表示したい
	 * 値をセッションに格納する。
	 */

	public String execute(){
		String result = SUCCESS;

		if(!(loginUserId.equals(""))
				&&!(loginPassword.equals(""))
				&&!(userName.equals(""))
				&&!(userKana.equals(""))
				&&!(sex.equals(""))
				&&!(address.equals(""))
				&&!(tellNumber.equals(""))
				&&!(mail.equals(""))){
					session.put("loginUserId", loginUserId);
					session.put("loginPassword", loginPassword);
					session.put("userName", userName);
					session.put("userKana", userKana);
					session.put("sex", sex);
					session.put("address", address);
					session.put("tellNumber", tellNumber);
					session.put("mail", mail);

		}else{
			setErrorMassage("未入力の項目があります。");
			result = ERROR;
		}
		return result;
	}


	public String getLoginUserId() {
		return loginUserId;
	}


	public void setLoginUserId(String loginUserId) {
		this.loginUserId = loginUserId;
	}


	public String getLoginPassword() {
		return loginPassword;
	}


	public void setLoginPassword(String loginPassword) {
		this.loginPassword = loginPassword;
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


	public String getSex() {
		return sex;
	}


	public void setSex(String sex) {
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


	public Map<String, Object> getSession() {
		return session;
	}


	public void setSession(Map<String, Object> session) {
		this.session = session;
	}


	public String getErrorMassage() {
		return errorMassage;
	}


	public void setErrorMassage(String errorMassage) {
		this.errorMassage = errorMassage;
	}



}
