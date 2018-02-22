package internousdev.sub.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import internousdev.sub.dto.BuyItemDTO;
import internousdev.sub.util.DBConnector;

public class BuyItemDAO {

	private DBConnector db = new DBConnector();
	private Connection con = db.getConnection();
	private List<BuyItemDTO> buyItemDTOList = new ArrayList<BuyItemDTO> ();


	public List<BuyItemDTO> getBuyItemInfo(){

		String sql = "SELECT * FROM item_info";

		try{
			PreparedStatement ps = con.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();

			while(rs.next()){
				BuyItemDTO buyItemDTO = new BuyItemDTO();

				buyItemDTO.setId(rs.getInt("id"));
				buyItemDTO.setItemName(rs.getString("item_name"));
				buyItemDTO.setItemPrice(rs.getInt("item_price"));
				buyItemDTO.setItemStock(rs.getInt("item_stock"));
				buyItemDTO.setItemCategory(rs.getString("item_category"));
				buyItemDTO.setItemDescription(rs.getString("item_description"));
				buyItemDTO.setImageFilePath(rs.getString("image_file_path"));
				buyItemDTO.setReleaseDate(rs.getString("release_date"));
				buyItemDTOList.add(buyItemDTO);
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
