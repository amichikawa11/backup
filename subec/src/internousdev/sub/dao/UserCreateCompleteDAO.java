package internousdev.sub.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import internousdev.sub.util.DBConnector;
import internousdev.sub.util.DateUtil;

public class UserCreateCompleteDAO {

	private DBConnector db = new DBConnector();

	private Connection con = db.getConnection();

	private DateUtil dateUtil = new DateUtil();

	private String sql = "INSERT INTO login_user(login_id, login_pass, user_name, user_address, user_sex, user_tell, user_mail,insert_date) VALUES(?,?,?,?,?,?,?,?)";


	public void createUser(String loginUserId, String loginPassword, String userName, String userAddress, String userSex, String userTell, String userMail)throws SQLException{

		try{
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1, loginUserId);
			ps.setString(2, loginPassword);
			ps.setString(3, userName);
			ps.setString(4, userAddress);
			ps.setString(5, userSex);
			ps.setString(6, userTell);
			ps.setString(7, userMail);
			ps.setString(8, dateUtil.getDate());

			ps.execute();

		}catch(SQLException e){

			e.printStackTrace();

		}finally{
			con.close();
		}
	}

}