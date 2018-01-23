package com.internousdev.webproj5.dao;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.internousdev.webproj5.dto.InquiryDTO;
import com.internousdev.webproj5.util.DBConnector;

public class InquiryCompleteDAO {

	List<InquiryDTO> inquiryDTOList = new ArrayList<InquiryDTO>();


	/**
	 * selectメソッド　DTOリストに値を格納
	 */

	public List<InquiryDTO> select() {

		DBConnector db = new DBConnector();

		Connection con = db.getConnection();

		String sql = "select * from inquiry";

	try {

		/**
		 * SQL文は、プリコンパイルされ、PreparedStatement
		 * オブジェクトに格納されます。
		 */

		PreparedStatement ps = con.prepareStatement(sql);

		/**
		 * ResultSet は、SQL クエリー(命令）の実行結果を含む
		 * Java オブジェクトです。 つまり、 ResultSet には
		 * クエリーの条件を満たす行が含まれます。
		 *  ResultSet オブジェクトに格納されたデータは、
		 *  get メソッドセットを使って取得されます。
		 */

		ResultSet rs = ps.executeQuery();

		/**
		 * ↓DTOにSQLデータを格納
		 */

		while(rs.next()) {
			InquiryDTO dto=new InquiryDTO();
			dto.setName(rs.getString("name"));
			dto.setQtype(rs.getString("qtype"));
			dto.setBody(rs.getString("body"));
			inquiryDTOList.add(dto);
		}

	} catch (SQLException e) {
		e.printStackTrace();
	}

	try {

		con.close();

	} catch (SQLException e) {
		e.printStackTrace();
	}

	return inquiryDTOList;
	}


	/**
	 * insertメソッド　
	 * （SQLに入力内容を登録＋問い合わせを何件登録したか表示）
	 */

	public int insert(String name, String qtype, String body) {
		int ret = 0;

		DBConnector db = new DBConnector();
		Connection con = db.getConnection();

		String sql = "insert into inquiry values(?,?,?)";

		try {
		PreparedStatement ps = con.prepareStatement(sql);
		ps.setString(1, name);
		ps.setString(2, qtype);
		ps.setString(3, body);
		int i = ps.executeUpdate();

		if (i > 0) {
			System.out.println(i + "件登録されました");
			ret = i;
		}

		} catch (SQLException e) {
			e.printStackTrace();

		}try {
		con.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return ret;
	}
}