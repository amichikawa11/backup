package com.internousdev.myec.action;

import java.sql.SQLException;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.opensymphony.xwork2.ActionSupport;

public class UserCreateCompleteAction extends ActionSupport implements SessionAware{

	private String loginUserId;
	private String loginPassword;
	private String userName;
	private String userKana;
	private String sex;
	private String tellNumber;
	private String address;

	public Map<String,Object> session;
	private UserCreateCompleteDAO userCreateCompketeDAO = new UserCreateCompleteDAO();

	public String execute() throws SQLException{

	}

}
