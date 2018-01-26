package com.internousdev.myec.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.internousdev.myec.dto.LoginDTO;
import com.internousdev.myec.util.DBConnector;

public class LoginDAO {
	private DBConnector db = new DBConnector();
	private Connection con = db.getConnection();
	private LoginDTO loginDTO = new LoginDTO();

	/**
	 * ログインユーザーの情報取得メソッド
	 */

	public LoginDTO getLoginUserInfo(String loginUserId,String loginPassword){
		String sql = "SELECT * FROM login_user_transaction WHERE login_id=? AND login_pass=?";

		try{
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1, loginUserId);
			ps.setString(2, loginPassword);

			ResultSet rs = ps.executeQuery();

			if(rs.next()){
				loginDTO.setLoginId(rs.getString("login_id"));
				loginDTO.setLoginPass(rs.getString("login_pass"));
				loginDTO.setUserName(rs.getString("user_naame"));
				loginDTO.setUserKana(rs.getString("user_kana"));
				loginDTO.setSex(rs.getInt("sex"));
				loginDTO.setAddress(rs.getString("address"));
				loginDTO.setTellNumber(rs.getString("tellnumber"));
				loginDTO.setMail(rs.getString("mail"));

				if(!(rs.getString("login_id").equals(null))){
					loginDTO.setLoginFlg(true);
				}

			}

		}catch(Exception e){
			e.printStackTrace();
		}
		return loginDTO;
	}

	public LoginDTO getLoginDTO(){
		return loginDTO;
	}

}
