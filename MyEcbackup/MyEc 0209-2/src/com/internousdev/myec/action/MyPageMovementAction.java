package com.internousdev.myec.action;


import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.opensymphony.xwork2.ActionSupport;



public class MyPageMovementAction extends ActionSupport implements SessionAware{

	public Map<String, Object> session;

	public String execute(){

		//ログインしていなければエラーページへ飛ぶ
		String result = "error";

		//ログイン済（idを持っている）時は購入ページへ飛ばす
		if (session.containsKey("id")) {
			// アイテム情報を取得

			result = SUCCESS;

		//管理者IDでログイン時は管理者ページへ飛ばす
		}if(session.containsKey("masterId")){

			result = "master";
		}

		//結果を返す
		return result;
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

