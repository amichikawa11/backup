package com.internousdev.myec.action;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.internousdev.myec.dto.BuyItemDTO;
import com.opensymphony.xwork2.ActionSupport;

public class BuyItemAction extends ActionSupport implements SessionAware {

	private ArrayList<BuyItemDTO> buyItemDTO = new ArrayList<>();

	/**
	 * アイテム購入個数（複数になるのでList(String)型の変数）
	 */
	private List<String> count;

	/**
	 * 支払い方法
	 */
	private String pay;

	/**
	 * アイテム情報を格納
	 */
	public Map<String, Object>  session;

	/**
	 * 商品情報取得メソッド
	 */
	public String execute() {
		String result = SUCCESS;

		//"count"にcountの値を紐付け
		session.put("count", count);

		//LoginActionで保管したbuyItemDTOListの値を使用する
		//→"buyItemDTOList"から保管されている値をgetで取得

		@SuppressWarnings("unchecked")
		List<BuyItemDTO> list = (List<BuyItemDTO>) session.get("buyItemDTOList");



		/**
		 * 合計金額を計算する処理
		 */

		//繰り返し処理（購入数countの数だけ繰り返す）
		for(int i=0; i<count.size(); i++){

			BuyItemDTO buyItemDTO = new BuyItemDTO();

			//i番目の値をgetterで取得して代入
			String buyItemName = list.get(i).getItemName();
			session.put("itemName",buyItemName);

			String buyItemPrice = list.get(i).getItemPrice();
			session.put("itemPrice",buyItemPrice);

			int buyItemId = list.get(i).getId();
			session.put("id",buyItemId);

			int item_stock = list.get(i).getItem_stock();

			//countはList型変数なのでget(i)で取得
			int intCount = Integer.parseInt(count.get(i));
			int intPrice = Integer.parseInt(list.get(i).getItemPrice());

			//購入数が0でなければ実行
			if(intCount != 0){

				//ここの"id"はbuyItemIdが入っている
				//buyItemIdは、Object型なのでint型にキャスト
				buyItemDTO.setId((int) session.get("id"));

				//ここの"itemName"はbuyItemNameが入っている
				//buyItemNameは、Object型なのでString型にキャスト
				buyItemDTO.setItemName(session.get("itemName").toString());

				//同じ理由でString型に変換
				buyItemDTO.setItemPrice(session.get("itemPrice").toString());

				//item_stockはそのまま取得しているのでキャストなし
				buyItemDTO.setItem_stock(item_stock);

				//購入個数×金額の結果をDTOに格納
				//"total_price"にも格納して他で使えるようにする
				buyItemDTO.setTotal_price(intCount * intPrice);
				session.put("total_price",intCount* intPrice);

				/**
				 * 合計金額の計算はここで終わり
				 */

				/**
				 * ここから支払い方法の選択処理
				 */


			}

		}








		session.put("total_price", intCount * intPrice);
		String payment;

		if(pay.equals("1")) {

			payment = "現金払い";
			session.put("pay", payment);
		} else {

			payment = "クレジットカード";
			session.put("pay", payment);
		}
		return result;
	}

	public int getCount() {
		return count;
	}

	public void setCount(int count) {
		this.count = count;
	}

	public String getPay() {
		return pay;
	}

	public void setPay(String pay) {
		this.pay = pay;
	}

	@Override
	public void setSession(Map<String, Object> session) {
		this.session = session;
	}
}
