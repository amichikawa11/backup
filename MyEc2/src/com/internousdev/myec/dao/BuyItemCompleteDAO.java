package com.internousdev.myec.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.internousdev.myec.util.DBConnector;
import com.internousdev.myec.util.DateUtil;

public class BuyItemCompleteDAO {
	private DBConnector db = new DBConnector();
	private Connection con = db.getConnection();
	private DateUtil dateUtil = new DateUtil();

	private String sql = "INSERT INTO user_buy_item_transaction (item_transaction_id, total_price, total_count, user_master_id, pay, insert_date) VALUES (?,?,?,?,?,?)";

	/**
	 * 商品購入情報メソッド
	 */

	public void buyItemInfo(int item_transaction_id, String user_master_id, String total_price, int total_count,String pay, int item_stock) throws SQLException{

		try{
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setInt(1, item_transaction_id);
			ps.setString(2,total_price);
			ps.setInt(3,total_count);
			ps.setString(4,user_master_id);
			ps.setString(5, pay);
			ps.setString(6,dateUtil.getDate());

			int checkCount = ps.executeUpdate();
			if(checkCount > 0){
				String sql2 = "UPDATE item_info_transaction SET item_stock = ? WHERE id=?";

				PreparedStatement preparedStatement = con.prepareStatement(sql2);
				preparedStatement.setInt(1,item_stock);
				preparedStatement.setInt(2,item_transaction_id);
				preparedStatement.executeUpdate();
			}

		}catch(Exception e){
			e.printStackTrace();
		}finally{
			con.close();
		}
	}

}
