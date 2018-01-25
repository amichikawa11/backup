package com.internousdev.webproj5.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.internousdev.webproj5.dto.HelloStrutsDTO;
import com.internousdev.webproj5.util.DBConnector;

public class HelloStrutsDAO {

	/**
	 * DTOリストのインスタンスを作成
	 */

	List<HelloStrutsDTO> helloStrutsDTOList = new ArrayList<HelloStrutsDTO>();


	/**
	 * 「selectメソッド」
	 * データベースに入力されているデータをgetterで取り出し
	 * setterでDTOのインスタンスにセットしている。
	 * （最後のaddでセットした項目をリストに追加）
	 */

	public List<HelloStrutsDTO> select(){
		DBConnector db = new DBConnector();
		Connection con = db.getConnection();

		String sql = "select * from users";

		try{
			PreparedStatement ps = con.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();

			while(rs.next()){
				HelloStrutsDTO dto = new HelloStrutsDTO();
				dto.setUserId(rs.getInt("user_id"));
				dto.setUserName(rs.getString("user_name"));
				dto.setPassword(rs.getString("password"));
				dto.setResult("MySQLと接続できます。");
				helloStrutsDTOList.add(dto);
			}

		}catch(SQLException e){
			e.printStackTrace();
		}
		try{
			con.close();

		}catch(SQLException e){
			e.printStackTrace();
		}

		return helloStrutsDTOList;
	}

}
