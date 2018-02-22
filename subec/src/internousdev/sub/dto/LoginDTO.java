package internousdev.sub.dto;

public class LoginDTO {

	private String loginId;
	private String loginPass;
	private String userName;
	private String userSex;
	private String userAddress;
	private String userTell;
	private String userMail;

	private String userNumber;
	private boolean loginFlg = false;
	private boolean loginMaster = false;
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
	public String getUserSex() {
		return userSex;
	}
	public void setUserSex(String userSex) {
		this.userSex = userSex;
	}
	public String getUserAddress() {
		return userAddress;
	}
	public void setUserAddress(String userAddress) {
		this.userAddress = userAddress;
	}
	public String getUserTell() {
		return userTell;
	}
	public void setUserTell(String userTell) {
		this.userTell = userTell;
	}
	public String getUserMail() {
		return userMail;
	}
	public void setUserMail(String userMail) {
		this.userMail = userMail;
	}
	public String getUserNumber() {
		return userNumber;
	}
	public void setUserNumber(String userNumber) {
		this.userNumber = userNumber;
	}
	public boolean isLoginFlg() {
		return loginFlg;
	}
	public void setLoginFlg(boolean loginFlg) {
		this.loginFlg = loginFlg;
	}
	public boolean isLoginMaster() {
		return loginMaster;
	}
	public void setLoginMaster(boolean loginMaster) {
		this.loginMaster = loginMaster;
	}


}
