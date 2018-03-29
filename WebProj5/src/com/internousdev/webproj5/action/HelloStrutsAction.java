package com.internousdev.webproj5.action;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.internousdev.webproj5.dao.HelloStrutsDAO;
import com.internousdev.webproj5.dto.HelloStrutsDTO;
import com.opensymphony.xwork2.ActionSupport;

public class HelloStrutsAction extends ActionSupport implements SessionAware{


	/**
	 * DTOリストのインスタンス作成
	 */
	private List<HelloStrutsDTO> helloStrutsDTOList = new ArrayList<HelloStrutsDTO>();

	/**
	 * session(マップの名前）を宣言
	 * （左がマップで保持されるキーの型、右が値の型）
	 * 今回はStringの名前を使って、Objectを取り出せるようにしている。
	 * 変数を他のクラスでも使えるようにする。
	 */

	private Map<String,Object> session;

	/**
	 * 最初に行うexecuteメソッド
	 * 結果によってSUCCESSかERRORを返す
	 */

	public String execute(){

		/**
		 * retを初期化
		 */
		String ret = ERROR;

		/**
		 * DAOのインスタンスを作成
		 */
		HelloStrutsDAO dao = new HelloStrutsDAO();

		/**
		 * DAOで定義したselectメソッドを使って
		 * HelloStrutsDTOList のインスタンスに値を入れる
		 */

		helloStrutsDTOList = dao.select();

		/**
		 * DTOリストに中身があれば、
		 * sessionにその値をセットする。
		 * うまく行けばSUCCESSを返してsuccessに指定した
		 * JSPページを表示させる。
		 */

		if(helloStrutsDTOList.size() > 0){
			session.put("helloStrutsDTOList", helloStrutsDTOList);
			ret = SUCCESS;

		}else{
			ret = ERROR;
		}

		return ret;
	}

	/**
	 * sessionの値を他で使えるように
	 * ゲッター&セッターを定義
	 */

	public Map<String,Object> getSession(){
		return session;
	}

	public void setSession(Map<String,Object> session){
		this.session = session;
	}

}
