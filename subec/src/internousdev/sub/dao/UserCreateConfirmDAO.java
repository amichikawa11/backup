package internousdev.sub.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Map;

import internousdev.sub.util.DBConnector;

public class UserCreateConfirmDAO {

	private DBConnector db = new DBConnector();

	private Connection con = db.getConnection();

	private boolean result = false;

	public Map<String, Object> session;


	public boolean getUserInfo(String loginUserId, String loginPassword){

		String sql = "SELECT * FROM login_user";

		try{

			PreparedStatement ps = con.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();

			while(rs.next()){

				String loginId = rs.getString("login_id");
				String password = rs.getString("login_pass");

				if(loginUserId.equals(loginId) || loginPassword.equals(password)){

					if(loginUserId.equals(loginId)){

						result = false;
						return result;

					}else{

						result = true;
					}
				}else{

					result = true;
				}
			}
		}catch(SQLException e){

			e.printStackTrace();
		}

		return result;
	}


	public Map<String, Object> getSession() {
		return session;
	}


	public void setSession(Map<String, Object> session) {
		this.session = session;
	}



}
