package com.internousdev.myec.dto;


public class LoginDTO {

	/**
	 * 登録されているユーザー情報
	 */

	private String loginId;

	private String loginPassword;

	private String userName;

	private String userAddress;

	private String userSex;

	private String userTell;

	private String userMail;

	//↓idを格納する変数
	private String userNumber;

	//ログインしているか否か
	private boolean loginFlg = false;

	//管理者か否か
	private boolean loginMaster = false;


	//ログインID
	public String getLoginId() {
		return loginId;
	}

	public void setLoginId(String loginId) {
		this.loginId = loginId;
	}

	//ログインPASS
	public String getLoginPassword() {
		return loginPassword;
	}

	public void setLoginPassword(String loginPassword) {
		this.loginPassword = loginPassword;
	}


	//名前
	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	//住所
	public String getUserAddress() {
		return userAddress;
	}

	public void setUserAddress(String userAddress) {
		this.userAddress = userAddress;
	}

	//性別
	public String getUserSex() {
		return userSex;
	}

	public void setUserSex(String userSex) {
		this.userSex = userSex;
	}

	//電話番号
	public String getUserTell() {
		return userTell;
	}

	public void setUserTell(String userTell) {
		this.userTell = userTell;
	}

	//メールアドレス
	public String getUserMail() {
		return userMail;
	}

	public void setUserMail(String userMail) {
		this.userMail = userMail;
	}

	//ユーザーナンバー(DBのidを格納する）
	public String getUserNumber() {
		return userNumber;
	}

	public void setUserNumber(String userNumber) {
		this.userNumber = userNumber;
	}


	//ログインチェック
	public boolean getLoginFlg() {
		return loginFlg;
	}

	public void setLoginFlg(boolean loginFlg) {
		this.loginFlg = loginFlg;
	}

	//管理者チェック
	public boolean getLoginMaster(){
		return loginMaster;
	}

	public void setLoginMaster(boolean loginMaster){
		this.loginMaster = loginMaster;
	}
}

