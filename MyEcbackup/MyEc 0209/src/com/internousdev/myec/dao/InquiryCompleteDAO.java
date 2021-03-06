package com.internousdev.myec.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.internousdev.myec.dto.InquiryDTO;
import com.internousdev.myec.util.DBConnector;

public class InquiryCompleteDAO {

	//Listで宣言、ArrayListでインスタンス生成を行う
	List<InquiryDTO> inquiryDTOList = new ArrayList<InquiryDTO>();

	/**
	 * ★実行メソッド
	 * 	入力された問い合わせデータをDBから取得、
	 * 	情報をinquiryDTOに格納、最後にaddで
	 * inquiryDTOに格納した値をinquiryDTOListに格納する
	 */
	public List<InquiryDTO> select(){

		//DBに接続

		DBConnector dbConnector = new DBConnector();
		Connection connection = dbConnector.getConnection();

		String sql = "select * from inquiry";

	try{

		PreparedStatement preparedStatement = connection.prepareStatement(sql);
		ResultSet resultSet = preparedStatement.executeQuery();

		//DBからgetterで取得した値をsetterでInquiryDTOに格納

		while(resultSet.next()){
			InquiryDTO inquiryDTO = new InquiryDTO();
			inquiryDTO.setInquiry_name(resultSet.getString("inquiry_name"));
			inquiryDTO.setInquiry_mail(resultSet.getString("inquiry_mail"));
			inquiryDTO.setQtype(resultSet.getString("qtype"));
			inquiryDTO.setBody(resultSet.getString("body"));
			inquiryDTO.setMaster_id(resultSet.getString("master_id"));
			inquiryDTOList.add(inquiryDTO);

		}

	}catch(SQLException e){
		e.printStackTrace();
	}

	try{
		connection.close();

	}catch(SQLException e){
		e.printStackTrace();
	}

	return inquiryDTOList;

}

	/**
	 * ★実行メソッド
	 * 	入力された値をDBに保管する
	 */


public int insert(String inquiry_name, String inquiry_mail, String qtype, String body, String master_id){
	int ret = 0;
	DBConnector dbConnector = new DBConnector();
	Connection connection = dbConnector.getConnection();

	//どこにinsertするかを指定
	String sql = "insert into inquiry values(?,?,?,?,?)";

	try{
		PreparedStatement preparedStatement = connection.prepareStatement(sql);
		preparedStatement.setString(1, inquiry_name);
		preparedStatement.setString(2, inquiry_mail);
		preparedStatement.setString(3, qtype);
		preparedStatement.setString(4, body);
		preparedStatement.setString(5, master_id);

		//DBへ値を追加した回数をiに代入
		int i = preparedStatement.executeUpdate();

		//DBへ値を保管できたら、保管した件数を表示
		//retに追加した件数を代入
		if(i>0){
			System.out.println(i+"件登録されました");
			ret = i ;
		}
	}catch(SQLException e){
		e.printStackTrace();

	}

	try{
		connection.close();

	}catch(SQLException e){
		e.printStackTrace();
	}

	return ret;
}


/**
 * 問合せ履歴の一括削除メソッド
 */
public int inquiryAllDelete(String master_id) throws SQLException{

String sql = "DELETE FROM inquiry WHERE master_id=?";

DBConnector dbConnector = new DBConnector();
Connection connection = dbConnector.getConnection();
PreparedStatement preparedStatement;

int result = 0;

try{
	preparedStatement = connection.prepareStatement(sql);
	preparedStatement.setString(1,master_id);

	result = preparedStatement.executeUpdate();

}catch(SQLException e){
	e.printStackTrace();

}finally{
	connection.close();
}

return result;

}

}