package com.internousdev.myec.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.internousdev.myec.util.DBConnector;
import com.internousdev.myec.util.DateUtil;

public class UserCreateCompleteDAO {
	private DBConnector db = new DBConnector();
	private Connection con = db.getConnection();
	private DateUtil dateUtil = new DateUtil();

	private String sql = "INSERT INTO login_user_transaction(login_id,login_pass,user_name,user_kana,sex,address,tellnumber,mail,insert_date)VALUES(?,?,?,?,?,?,?,?,?)";

	public void createUser(String loginUserId,String loginUserPassword,String userName,String userKana,String sex,String address,String tellNumber,String mail)throws SQLException{
		try{
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1, loginUserId);
			ps.setString(2, loginUserPassword);
			ps.setString(3, userName);
			ps.setString(4, userKana);
			ps.setString(5, sex);
			ps.setString(6, address);
			ps.setString(7, tellNumber);
			ps.setString(8, mail);
			ps.setString(9, dateUtil.getDate());

			ps.execute();

		}catch(Exception e){
			e.printStackTrace();
		}finally{
			con.close();
		}
	}

}
