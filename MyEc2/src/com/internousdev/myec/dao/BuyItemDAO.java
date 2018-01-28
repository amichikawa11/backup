package com.internousdev.myec.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.internousdev.myec.dto.BuyItemDTO;
import com.internousdev.myec.util.DBConnector;

public class BuyItemDAO {

	private DBConnector db = new DBConnector();
	private Connection con = db.getConnection();
	private List<BuyItemDTO> buyItemDTOList = new ArrayList<BuyItemDTO>();

	//商品情報取得メソッド

	public List<BuyItemDTO> getBuyItemInfo(){

		String sql = "SELECT item_name,item_price,item_stock,item_category,item_description,image_file_path FROM item_info_transaction";

		try {
			PreparedStatement ps = con.prepareStatement(sql);
			ResultSet rs = ps.executeQuery(sql);

			while(rs.next()){
				BuyItemDTO dto = new BuyItemDTO();
				dto.setId(rs.getInt("id"));
				dto.setItemName(rs.getString("item_name"));
				dto.setItemPrice(rs.getString("item_price"));
				dto.setItem_stock(rs.getInt("item_stock"));
				dto.setItemCategory(rs.getString("item_category"));
				dto.setItemDescription(rs.getString("item_description"));
				dto.setImageFilePath(rs.getString("image_file_path"));
				buyItemDTOList.add(dto);
			}

		}catch(Exception e){
			e.printStackTrace();
		}
		return buyItemDTOList;
	}

	public List<BuyItemDTO> getBuyItemDTO(){
		return buyItemDTOList;
	}

}
