package internousdev.sub.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import internousdev.sub.util.DBConnector;
import internousdev.sub.util.DateUtil;

public class BuyItemCompleteDAO {

	private DBConnector db = new DBConnector();

	private Connection con = db.getConnection();

	private DateUtil dateUtil = new DateUtil();

	private String sql = "INSERT INTO buy_item_transaction(item_transaction_id, total_price, total_count, user_master_id, pay, insert_date)VALUES(?,?,?,?,?,?)";

	public void buyItemInfo(int item_transaction_id, int totalPrice, int totalCount, String user_master_id, String pay, int item_stock)throws SQLException{

		try{

			PreparedStatement ps = con.prepareStatement(sql);
			ps.setInt(1, item_transaction_id);
			ps.setInt(2, totalPrice);
			ps.setInt(3, totalCount);
			ps.setString(4, user_master_id);
			ps.setString(5, pay);
			ps.setString(6, dateUtil.getDate());

			int buyCount = ps.executeUpdate();

			if(buyCount > 0){

				String sql2 = "UPDATE item_info SET item_stock=? WHERE id=?";

				PreparedStatement ps2 = con.prepareStatement(sql2);
				ps2.setInt(1, item_stock);
				ps2.setInt(2, item_transaction_id);
				ps2.executeUpdate();
			}

		}catch(Exception e){

			e.printStackTrace();

		}finally{

			con.close();
		}
	}

}
