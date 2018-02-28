package internousdev.sub.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import internousdev.sub.dto.ItemInsertDTO;
import internousdev.sub.util.DBConnector;

public class ItemInsertDAO {

	private DBConnector db = new DBConnector();

	private Connection con = db.getConnection();

	private ItemInsertDTO itemInsertDTO = new ItemInsertDTO();

	private String sql = "INSERT INTO item_info(item_name, item_price, item_stock, item_category, item_description, image_file_path, release_date) VALUES(?,?,?,?,?,?,?)";


	public ItemInsertDTO itemInsertInfo(String itemName, int itemPrice, int itemStock, String itemCategory, String itemDescription, String imageFilePath, String releaseDate) throws SQLException{

		try{

			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1, itemName);
			ps.setInt(2, itemPrice);
			ps.setInt(3, itemStock);
			ps.setString(4, itemCategory);
			ps.setString(5, itemDescription);
			ps.setString(6, imageFilePath);
			ps.setString(7, releaseDate);

			ps.executeUpdate();

		}catch(Exception e){

			e.printStackTrace();

		}finally{

				con.close();

		}

		return itemInsertDTO;
	}

}
