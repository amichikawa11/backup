package internousdev.sub.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import internousdev.sub.util.DBConnector;

public class ItemDeleteDAO {

	private DBConnector db = new DBConnector();

	private Connection con = db.getConnection();

	private String sql = "DELETE FROM item_info WHERE item_name=?";

	public void itemDeleteInfo(String deleteName) throws SQLException{

		try{
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1, deleteName);

			ps.executeUpdate();

		}catch(SQLException e){

			e.printStackTrace();

		}finally{

			con.close();
		}

	}

}
