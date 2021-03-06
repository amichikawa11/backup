package com.internousdev.myec.action;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.internousdev.myec.dao.ItemInvestoryDAO;
import com.internousdev.myec.dto.BuyItemDTO;
import com.opensymphony.xwork2.ActionSupport;

public class ItemInvestoryConfirmAction extends ActionSupport implements SessionAware{

	public Map<String, Object> session;

	//後で数値を入れるので空のbuyItemDTOList を宣言しておく
	private ArrayList<BuyItemDTO> buyItemDTOList = new ArrayList<>();

	/**
	 * 実行メソッド
	 */

	public String execute() throws SQLException {

		//ItemInvestoryControlActionで定義した"list"から値を取得
		@SuppressWarnings("unchecked")
		List<BuyItemDTO> list = (ArrayList<BuyItemDTO>) session.get("list");

		for(int i =0; i < list.size(); i++){

			int count = list.get(i).getCount();
			int itemStock = list.get(i).getItem_stock();
			int totalCount = list.get(i).getTotal_count();
			String itemName = list.get(i).getItemName();
			String imageFilePath = list.get(i).getImage_file_path();

			//DBに値を格納するメソッドで使用するのでidも取得しておく
			int id = list.get(i).getId();


			BuyItemDTO buyItemDTO = new BuyItemDTO();
			buyItemDTO.setItemName(itemName);
			buyItemDTO.setImage_file_path(imageFilePath);
			buyItemDTO.setTotal_count(totalCount);
			buyItemDTO.setCount(count);

			buyItemDTOList.add(buyItemDTO);

			//ItemInvestoryDAOのメソッドを使ってDBに値を保管

			ItemInvestoryDAO itemInvestoryDAO = new ItemInvestoryDAO();
			itemInvestoryDAO.itemInfo(totalCount,id);

		}

		String result = SUCCESS;
		return result;
	}


	//以下、getterとsetter

	public ArrayList<BuyItemDTO> getBuyItemDTOList(){
		return buyItemDTOList;
	}

	public void setBuyItemDTOList(ArrayList<BuyItemDTO> buyItemDTOList){
		this.buyItemDTOList = buyItemDTOList;
	}

	@Override
	public void setSession(Map<String,Object> session){
		this.session = session;
	}

}
