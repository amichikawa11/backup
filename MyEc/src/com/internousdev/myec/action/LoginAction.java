package com.internousdev.myec.action;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.internousdev.myec.dao.BuyItemDAO;
import com.internousdev.myec.dao.LoginDAO;
import com.internousdev.myec.dto.BuyItemDTO;
import com.internousdev.myec.dto.LoginDTO;
import com.opensymphony.xwork2.ActionSupport;

public class LoginAction extends ActionSupport implements SessionAware{

	/**
	 * ログインID
	 */
	private String loginUserId;

	/**
	 * ログインPASS
	 */
	private String loginPassword;

	/**
	 * ログイン情報の格納
	 */
	private Map<String,Object> session;

	/**
	 * ログイン情報の取得DAO
	 */
	private LoginDAO loginDAO = new LoginDAO();

	/**
	 * ログイン情報の格納DTO
	 */
	private LoginDTO loginDTO = new LoginDTO();

	/**
	 * 商品情報の取得
	 */

	private BuyItemDAO buyItemDAO = new BuyItemDAO();
	private BuyItemDTO buyItemDTO = new BuyItemDTO();
	private List<BuyItemDTO> buyItemDTOList = new ArrayList<BuyItemDTO>();

	/**
	 * 実行メソッド
	 */

	public String execute(){
		String result = ERROR;
		loginDTO = loginDAO.getLoginUserInfo(loginUserId,loginPassword);
		session.put("loginUser", loginDTO);

		if(((LoginDTO)session.get("loginUser")).isLoginFlg()){
			result = SUCCESS;
			buyItemDTOList = buyItemDAO.getBuyItemInfo();

			session.put("login_user_id",loginDTO.getLoginId());
			session.put("buyItemDTOList", buyItemDTOList);

			return result;
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

	public Map<String, Object> getSession() {
		return session;
	}

	public void setSession(Map<String, Object> session) {
		this.session = session;
	}

	public LoginDAO getLoginDAO() {
		return loginDAO;
	}

	public void setLoginDAO(LoginDAO loginDAO) {
		this.loginDAO = loginDAO;
	}

	public LoginDTO getLoginDTO() {
		return loginDTO;
	}

	public void setLoginDTO(LoginDTO loginDTO) {
		this.loginDTO = loginDTO;
	}

	public BuyItemDAO getBuyItemDAO() {
		return buyItemDAO;
	}

	public void setBuyItemDAO(BuyItemDAO buyItemDAO) {
		this.buyItemDAO = buyItemDAO;
	}

	public BuyItemDTO getBuyItemDTO() {
		return buyItemDTO;
	}

	public void setBuyItemDTO(BuyItemDTO buyItemDTO) {
		this.buyItemDTO = buyItemDTO;
	}

	public List<BuyItemDTO> getBuyItemDTOList() {
		return buyItemDTOList;
	}

	public void setBuyItemDTOList(List<BuyItemDTO> buyItemDTOList) {
		this.buyItemDTOList = buyItemDTOList;
	}



}
