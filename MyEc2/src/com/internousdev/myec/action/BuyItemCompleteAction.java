package com.internousdev.myec.action;

import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.opensymphony.xwork2.ActionSupport;

public class BuyItemCompleteAction extends ActionSupport implements SessionAware{

	public Map<String,Object> session;

	/**
	 * 商品購入情報 登録完了メソッド
	 */

	public String execute(){
		String result = SUCCESS;
		return result;
	}

	@Override
	public void setSession(Map<String,Object> session){
		this.session = session;
	}

}