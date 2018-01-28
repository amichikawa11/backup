package com.internousdev.myec.action;

import java.util.List;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.internousdev.myec.dao.BuyItemDAO;
import com.internousdev.myec.dao.LoginDAO;
import com.internousdev.myec.dto.BuyItemDTO;
import com.internousdev.myec.dto.LoginDTO;
import com.opensymphony.xwork2.ActionSupport;

/**
 * ログイン認証
 * login.jspから受け取った値をDBへ渡して
 * 内容が合っているかチェック
 */


public class LoginAction extends ActionSupport implements SessionAware{

	 //ログインID

	private String loginUserId;

	 // ログインPASS

	private String loginPassword;


	 //ログイン情報を他でも使用できるように
	 // sessionに格納

	private Map<String,Object> session;


	 //入力されたログイン情報を取得（DAO）

	private LoginDAO loginDAO = new LoginDAO();


	 // ログイン情報を保存する(DTO)

	private LoginDTO loginDTO = new LoginDTO();



	 //アイテム情報を取得&データを格納

	private BuyItemDAO buyItemDAO = new BuyItemDAO();
	private BuyItemDTO buyItemDTO = new BuyItemDTO();
	private List<BuyItemDTO> buyItemDTOList;


	 //アクション実行時に行うメソッド

	public String execute(){

		String result = ERROR;

		loginDTO = loginDAO.getLoginUserInfo(loginUserId,loginPassword);
			session.put("loginUser", loginDTO);

			if(((LoginDTO) session.get("loginUser")).getLoginMaster()){
				buyItemDTOList = buyItemDAO.getBuyItemInfo();
				session.put("buyItemDTOList",buyItemDTOList);
				session.put("masterId", loginUserId);
				result = "master";
			}
			if(result != "master"){
				if(((LoginDTO) session.get("loginUser")).getLoginFlg()){

					//商品情報の取得
					buyItemDTOList = buyItemDAO.getBuyItemInfo();

					//"buyItemDTOList"に商品情報を格納
					session.put("buyItemDTOList",buyItemDTOList);
					session.put("id",buyItemDTO.getId());
					session.put("login_user_id",loginDTO.getLoginId());
					session.put("userName",loginDTO.getUserName());
					session.put("userAddress",loginDTO.getUserAddress());

				}
			}

		return result;
	}

		public String getLoginUserId(){
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


	public List<BuyItemDTO> getBuyItemDTOList() {
		return buyItemDTOList;
	}


	public void setBuyItemDTOList(List<BuyItemDTO> buyItemDTOList) {
		this.buyItemDTOList = buyItemDTOList;
	}

	@Override
	public void setSession(Map<String,Object> session){
		this.session = session;
	}



}
