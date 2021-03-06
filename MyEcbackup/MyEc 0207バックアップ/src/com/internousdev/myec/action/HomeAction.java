package com.internousdev.myec.action;

import java.util.List;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.internousdev.myec.dao.BuyItemDAO;
import com.internousdev.myec.dto.BuyItemDTO;
import com.opensymphony.xwork2.ActionSupport;

public class HomeAction extends ActionSupport implements SessionAware {

	public Map<String, Object> session;
	private BuyItemDAO buyItemDAO = new BuyItemDAO();
	private List<BuyItemDTO> buyItemDTOList;

	/**
	 * ログインボタン押下時に実行
	 * ログイン画面へ遷移します。
	 *
	 * @return SUCCSESS
	 */
	public String execute() {

		//ログインしていなければホームへ戻る
		String result = "home";

		//ログイン済（idを持っている）時は購入ページへ飛ばす
		if (session.containsKey("id")) {
			// アイテム情報を取得

			buyItemDTOList = buyItemDAO.getBuyItemInfo();
			session.put("buyItemDTOList", buyItemDTOList);

			result = SUCCESS;

		//管理者IDでログイン時は管理者ページへ飛ばす
		}if(session.containsKey("masterId")){
			buyItemDTOList = buyItemDAO.getBuyItemInfo();
			session.put("buyItemDTOList", buyItemDTOList);
			result = "master";
		}

		//結果を返す
		return result;
	}


	//getterとsetterの定義

	public List<BuyItemDTO> getBuyItemDTOList(){
		return buyItemDTOList;
	}
	public void setBuyItemDTOList(List<BuyItemDTO> buyItemDTOList){
		this.buyItemDTOList=buyItemDTOList;
	}

	@Override
	public void setSession(Map<String, Object> session){
		this.session = session;
	}

	public void setsession(Map<String, Object> session) {
		this.session = session;
	}

	public Map<String, Object> getsession() {
		return this.session;
	}
}
