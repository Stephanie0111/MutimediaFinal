package dao;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import database.java_db_util;
import domain.text_board;;
public class board_dao {
	//獲取訊息
	public List<text_board> get_message(String good_id) throws ClassNotFoundException, SQLException {
		java_db_util db = new java_db_util();
		List<text_board> list = new ArrayList<text_board>();
		Connection con = null;
		con = db.getConnection();
		String sql = "select * from board where good_id=? order by date DESC";
		PreparedStatement prest = con.prepareStatement(sql);
		prest.setString(1, good_id);
		ResultSet rs=prest.executeQuery();
		while (rs.next())
		{
			text_board mess = new text_board();
			mess.setName(rs.getString("name"));
			mess.setGood_id(rs.getString("good_id"));
			mess.setMessage(rs.getString("message"));
			mess.setScore(rs.getInt("score"));
			mess.setTitle(rs.getString("title"));
			mess.setDate(rs.getString("date"));
			list.add(mess);
		}
		con.close();
		return list;
	}
	//增加訊息
	public boolean add_message(text_board message) throws ClassNotFoundException, SQLException {
		String name = message.getName();
		String title = message.getTitle();
		String good_id = message.getGood_id();
		String mess = message.getMessage();
		int star = message.getScore();
		Date today = new Date();
		SimpleDateFormat date =new SimpleDateFormat("yyyy.MM.dd hh:mm:ss");
		java_db_util db = new java_db_util();
		Connection con = null;
		con = db.getConnection();
		String sql = "INSERT INTO board values(?,?,?,?,?,?);";
		PreparedStatement prest = con.prepareStatement(sql);
		prest.setString(1, name);
		prest.setString(2, mess);
		prest.setString(3, good_id);
		prest.setString(4, title);
		prest.setInt(5, star);
		prest.setString(6,date.format(today));
		prest.executeUpdate();
		con.close();
		return true;
	}
	//獲取連言版分數
	public String get_scope(String id) throws ClassNotFoundException, SQLException
	{
		java_db_util db = new java_db_util();
		Connection con = null;
		con = db.getConnection();
		String sql = "SELECT round(avg(score),2) as score from board where good_id=? GROUP BY good_id;";
		PreparedStatement prest = con.prepareStatement(sql);
		prest.setString(1, id);
		ResultSet rs = prest.executeQuery();
		if(rs.next())
		{
			String score = rs.getString("score");
			return score;
		}
		else
			return "0";
	}
}
