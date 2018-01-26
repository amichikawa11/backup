package com.internousdev.myec.action;

import java.sql.SQLException;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.internousdev.myec.dao.UserCreateCompleteDAO;
import com.opensymphony.xwork2.ActionSupport;

public class UserCreateCompleteAction extends ActionSupport implements SessionAware{

	private String loginUserId;
	private String loginPassword;
	private String userName;
	private String userKana;
	private String sex;
	private String address;
	private String tellNumber;
	private String mail;


	public Map<String,Object> session;
	private UserCreateCompleteDAO userCreateCompleteDAO = new UserCreateCompleteDAO();


	/**
	 * DAOを経由して入力された内容をDBに登録する
	 */

	public String execute() throws SQLException{
		userCreateCompleteDAO.createUser(session.get("loginUserId").toString(),
				session.get("loginPassword").toString(),
				session.get("userName").toString(),
				session.get("userKana").toString(),
				session.get("sex").toString(),
				session.get("address").toString(),
				session.get("tellNumber").toString(),
				session.get("mail").toString());

		String result = SUCCESS;

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


	@Override
	public void setSession(Map<String,Object> session){
		this.session = session;
	}


}
