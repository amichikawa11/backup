package internousdev.sub.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import internousdev.sub.dto.ItemHistoryDTO;
import internousdev.sub.util.DBConnector;

public class ItemHistoryDAO {

	private DBConnector db = new DBConnector();

	private Connection con = db.getConnection();


	/**
	 * 商品履歴の取得
	 */

	public ArrayList<ItemHistoryDTO> getItemHistoryInfo(String user_master_id) throws SQLException{

		ArrayList<ItemHistoryDTO> itemHistoryDTO = new ArrayList<ItemHistoryDTO>();

		String sql = "SELECT ubit.id, iit.item_name, ubit.total_price, ubit.total_count, ubit.pay, ubit.insert_date FROM buy_item_transaction ubit LEFT JOIN item_info iit ON ubit.item_transaction_id = iit.id where ubit.user_master_id  = ? ORDER BY insert_date DESC";

		try{

			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1, user_master_id);

			ResultSet rs = ps.executeQuery();

			while(rs.next()){

				ItemHistoryDTO dto = new ItemHistoryDTO();

				dto.setId(rs.getString("id"));
				dto.setItemName(rs.getString("item_name"));
				dto.setTotalPrice(rs.getString("total_price"));
				dto.setTotalCount(rs.getString("total_count"));
				dto.setPayment(rs.getString("pay"));
				dto.setInsert_date(rs.getString("insert_date"));

				itemHistoryDTO.add(dto);
			}
		}catch(SQLException e){

			e.printStackTrace();

		}finally{

			con.close();
		}

		return itemHistoryDTO;

		}

}
