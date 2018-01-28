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

	//ログインユーザー情報取得メソッド
	public LoginDTO getLoginUserInfo(String loginUserId,String loginPassword){

		String sql = "SELECT * FROM login_user_transaction where login_id=? AND login_pass=?";

		try{
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1, loginUserId);
			ps.setString(2, loginPassword);

			ResultSet rs = ps.executeQuery();

			if(rs.next()){
				LoginDTO dto = new LoginDTO();
				dto.setLoginId(rs.getString("login_id"));
				dto.setLoginPass(rs.getString("login_password"));
				dto.setUserName(rs.getString("user_name"));
				dto.setUserAddress(rs.getString("user_address"));
				dto.setUserSex(rs.getString("user_sex"));
				dto.setUserTell(rs.getString("user_tell"));
				dto.setUserMail(rs.getString("user_mail"));
				dto.setUserNumber(rs.getString("id"));


				//login_idが空欄でなければログインFlgがtrueになる
				if(!(rs.getString("login_id").equals(null))){
					dto.setLoginFlg(true);
				}

				//login_idが管理者taroなら管理者Flgがtrueになる
				if(rs.getString("login_id").equals("taro") && rs.getString("login_pass").equals("123")){
					dto.setLoginMaster(true);
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


