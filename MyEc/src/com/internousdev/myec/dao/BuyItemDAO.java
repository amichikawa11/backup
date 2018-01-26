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
	List<BuyItemDTO> buyItemDTOList = new ArrayList<BuyItemDTO>();

	/**
	 * 商品情報の取得メソッド
	 */

	public List<BuyItemDTO> getBuyItemInfo(){
		String sql = "SELECT id,category,item_name,item_price,description,image_file_path FROM item_info";

		try{
			PreparedStatement ps = con.prepareStatement(sql);
			ResultSet rs = ps.executeQuery(); /** ←SQL文の実行 */
			if(rs.next()){
				BuyItemDTO dto = new BuyItemDTO();
				dto.setId(rs.getInt("id"));
				dto.setCategory(rs.getString("category"));
				dto.setItemName(rs.getString("item_name"));
				dto.setItemPrice(rs.getString("item_price"));
				dto.setDescription(rs.getString("description"));
				dto.setImageFilePath(rs.getString("image_file_path"));
				buyItemDTOList.add(dto);
			}
		}catch(Exception e){
			e.printStackTrace();
		}
		return buyItemDTOList;


	}

	public List<BuyItemDTO> getBuyItemDTOList(){
		return buyItemDTOList;
	}

}
