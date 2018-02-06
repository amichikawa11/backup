package com.internousdev.myec.action;

import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.internousdev.myec.dao.UserCreateConfirmDAO;
import com.internousdev.myec.dto.LoginDTO;
import com.opensymphony.xwork2.ActionSupport;

public class UserUpdateAction extends ActionSupport implements SessionAware{

	private String loginUserId;
	private String loginPassword;
	private String userName;
	private String userAddress;
	private String userSex;
	private String userTell;
	private String userMail;

	public Map<String,Object> session;

	private String errorMassage;

	private LoginDTO loginDTO = new LoginDTO();

	private UserCreateConfirmDAO dao = new UserCreateConfirmDAO();


	/**
	 * 実行メソッド
	 */
	public String execute(){
		String result = SUCCESS;

		boolean dateCheck = false;

		if(!(loginUserId.length() == 0) && !(loginPassword.length() == 0)
				&&!(userName.length() ==0) &&!(userAddress.length() ==0) &&!(userTell.length() ==0)
				&&!(userMail.length() ==0)){

			String defaultLoginId = ((LoginDTO) session.get("loginUser")).getLoginId();
			String defaultPassword = ((LoginDTO) session.get("loginUser")).getLoginPassword();
			session.put("defaultLoginId", defaultLoginId);

			if(defaultLoginId.equals(loginUserId) || defaultPassword.equals(loginPassword)){

				//パスワードの変更
				if(defaultLoginId.equals(loginUserId)){
					dateCheck = true;

				}else{

					//IDの変更
					dateCheck = dao.getUserInfo(loginUserId,loginPassword);
				}
			}else{

				//両方を変更
				dateCheck = dao.getUserInfo(loginUserId, loginPassword);
			}

			if(dateCheck){

			}

		}



	}

}
