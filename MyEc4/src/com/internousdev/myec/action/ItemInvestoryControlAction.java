package com.internousdev.myec.action;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.internousdev.myec.dto.BuyItemDTO;
import com.opensymphony.xwork2.ActionSupport;

public class ItemInvestoryControlAction extends ActionSupport implements SessionAware{

	private ArrayList<BuyItemDTO> buyItemDTOList = new ArrayList<BuyItemDTO>();

	//itemInvestoryControl.jspで選択された在庫数
	private List<String> count;

	public Map<String,Object> session;


	/**
	 * 実行メソッド
	 */

	public String execute(){

		String result = SUCCESS;

		session.put("count",count);

		//listに"buyItemDTOList"の値を格納
		@SuppressWarnings("unchecked")
		List<BuyItemDTO> list = (List<BuyItemDTO>) session.get("buyItemDTOList");

		//countリストに格納されている要素数（在庫を変更した商品数）
		//の分だけループ処理を行う
		for(int i=0; i<count.size(); i++){

			BuyItemDTO dto = new BuyItemDTO();

			String itemName = list.get(i).getItemName();
			int itemStock = list.get(1).getItem_stock();
			int intCount=Integer.parseInt(count.get(i));
			int id = list.get(i).getId();
			int totalCount = itemStock + intCount;

			if(intCount != 0){
				dto.setItemName(itemName);
				dto.setItem_stock(itemStock);
				dto.setCount(intCount);
				dto.setId(id);
				dto.setTotal_count(totalCount);

			buyItemDTOList.add(dto);

			}

			session.put("list",buyItemDTOList);
	}

	return result;

}

	public List<String> getCount() {
		return count;
	}

	public void setCount(List<String> count) {
		this.count = count;
	}

	@Override
	public void setSession(Map<String,Object> session){
		this.session = session;
	}
}