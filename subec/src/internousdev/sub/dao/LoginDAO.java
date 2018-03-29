package internousdev.sub.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import internousdev.sub.dto.LoginDTO;
import internousdev.sub.util.DBConnector;

public class LoginDAO {

	private DBConnector db = new DBConnector();
	private Connection con = db.getConnection();
	private LoginDTO loginDTO = new LoginDTO();

	public LoginDTO getLoginUserInfo(String loginUserId, String loginPassword){

		String sql = "SELECT * FROM login_user where login_id=? AND login_pass=?";

		try{

			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1, loginUserId);
			ps.setString(2, loginPassword);

			ResultSet rs = ps.executeQuery();

			if(rs.next()){
				loginDTO.setLoginId(rs.getString("login_id"));
				loginDTO.setLoginPass(rs.getString("login_pass"));
				loginDTO.setUserName(rs.getString("user_name"));
				loginDTO.setUserAddress(rs.getString("user_address"));
				loginDTO.setUserSex(rs.getString("user_sex"));
				loginDTO.setUserTell(rs.getString("user_tell"));
				loginDTO.setUserMail(rs.getString("user_mail"));
				loginDTO.setUserNumber(rs.getString("id"));

				if(!(rs.getString("login_id").equals(null))){
					loginDTO.setLoginFlg(true);

				}

				if(rs.getString("login_id").equals("kanri")
						&&(rs.getString("login_pass").equals("123"))){
					loginDTO.setLoginMaster(true);
				}
			}
		}catch(SQLException e){
			e.printStackTrace();
		}

		return loginDTO;
	}

	public LoginDTO getLoginDTO() {
		return loginDTO;
	}

	public void setLoginDTO(LoginDTO loginDTO) {
		this.loginDTO = loginDTO;
	}




}
