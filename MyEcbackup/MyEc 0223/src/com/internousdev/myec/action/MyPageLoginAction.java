package com.internousdev.myec.action;

import java.util.List;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.internousdev.myec.dao.BuyItemDAO;
import com.internousdev.myec.dao.LoginDAO;
import com.internousdev.myec.dto.BuyItemDTO;
import com.internousdev.myec.dto.LoginDTO;
import com.opensymphony.xwork2.ActionSupport;


public class MyPageLoginAction extends ActionSupport implements SessionAware{

		/**
		 * ログインID
		 */
		private String loginUserId;

		/**
		 * ログインパスワード
		 */
		private String loginPassword;

		/**
		 * ログイン情報を格納
		 */
		public Map<String, Object> session;

		/**
		 * ログイン情報取得（DAOインスタンス）
		 */
		private LoginDAO loginDAO = new LoginDAO();

		/**
		 * ログイン情報格納（DTOインスタンス）
		 */
		private LoginDTO loginDTO = new LoginDTO();

		/**
		 * アイテム情報を取得（Listも宣言しておく）
		 */
		private BuyItemDAO buyItemDAO = new BuyItemDAO();
		private BuyItemDTO buyItemDTO = new BuyItemDTO();
		private List<BuyItemDTO> buyItemDTOList;

		/**
		 * 実行メソッド
		 */
		public String execute() {

			String result = ERROR;


			// ログイン実行(LoginDAOのメソッドを使用）
			//取得した値をloginDTOに格納
			loginDTO = loginDAO.getLoginUserInfo(loginUserId, loginPassword);

			//"loginUser"にloginDTOを紐付け
			session.put("loginUser", loginDTO);

			/**
			 * ログイン情報を比較
			 */

			//loginMasterがtrueだった場合の処理
			//buyItemDTOListにBuyItemDAOのメソッドを使って
			//商品情報を格納、"buyItemDTOList"と紐付け
			//"masterId"にloginUserIdを紐付け

			if(((LoginDTO) session.get("loginUser")).getLoginMaster()){
				buyItemDTOList = buyItemDAO.getBuyItemInfo();
				session.put("buyItemDTOList",buyItemDTOList);
				session.put("masterId",loginUserId);
				result = "master";
			}

			//masterではない ＆ loginFlgがtrueだった時の処理
			if(result != "master"){
				if(((LoginDTO) session.get("loginUser")).getLoginFlg()) {
				result = SUCCESS;

				// アイテム情報を取得
				buyItemDTOList = buyItemDAO.getBuyItemInfo();

				//BuyItemActionで使用するので、
				//"buyItemDTOList"に取得したアイテム情報を紐付け
				//購入する商品名などはBuyItemActionで定義する
				session.put("buyItemDTOList",buyItemDTOList);
				session.put("id", buyItemDTO.getId());
				session.put("login_user_id",loginDTO.getLoginId());
				session.put("userName",loginDTO.getUserName());
				session.put("userAddress",loginDTO.getUserAddress());
				session.put("userSex",loginDTO.getUserSex());
				session.put("userTell",loginDTO.getUserTell());
				session.put("userMail",loginDTO.getUserMail());

				}
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

		public List<BuyItemDTO> getBuyItemDTOList() {
			return buyItemDTOList;
		}

		public void setBuyItemDTOList(List<BuyItemDTO> buyItemDTOList) {
			this.buyItemDTOList = buyItemDTOList;
		}

		@Override
		public void setSession(Map<String, Object> session) {
			this.session = session;
		}
	}
