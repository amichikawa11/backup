package internousdev.sub.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import internousdev.sub.util.DBConnector;

public class ItemHistoryDeleteDAO {

	private DBConnector db = new DBConnector();

	private Connection con = db.getConnection();

	public int itemHistoryDelete(String user_master_id) throws SQLException{

		int result = 0;

		String sql = "DELETE FROM buy_item_transaction WHERE user_master_id=?";

		try{

			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1, user_master_id);
			result = ps.executeUpdate();

		}catch(SQLException e){

			e.printStackTrace();

		}finally{

			con.close();
		}

		return result;

	}

}
