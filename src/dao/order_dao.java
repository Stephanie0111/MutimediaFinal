package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import database.java_db_util;
import domain.mem_order;

public class order_dao {
	//增加訂單
	public boolean add_order(String acc,String good_id,String count,String state) throws ClassNotFoundException, SQLException
	{
		java_db_util conn = new java_db_util();
		Connection con = conn.getConnection();
		String sql = "SELECT * from `order` where cust_acc=? and  good_id=? and state='order';";
		PreparedStatement prest = con.prepareStatement(sql);
		prest.setString(1, acc);
		prest.setString(2, good_id);
		ResultSet rs = prest.executeQuery();		
		if(rs.next())
		{
			con.close();
			return false;
		}
		else {
			sql = "INSERT INTO `order` values(?,?,?,?);";
			prest = con.prepareStatement(sql);
			prest.setString(1, acc);
			prest.setString(2, good_id);
			prest.setString(3, count);
			prest.setString(4, state);
			prest.executeUpdate();
			con.close();
			return true;
		}
	}
	//刪除訂單
	public void dele_order(String acc,String good_id) throws ClassNotFoundException, SQLException
	{
		java_db_util conn = new java_db_util();
		Connection con = conn.getConnection();
		String sql = "DELETE from `order` WHERE cust_acc = ? and good_id = ? and state='order' " ;
		PreparedStatement prest = con.prepareStatement(sql);
		prest.setString(1, acc);
		prest.setString(2, good_id);
		prest.executeUpdate(); 
		con.close();
	}
	//修改訂單
	public void change_order(String acc,String[] good_id,String[] count) throws ClassNotFoundException, SQLException
	{
		java_db_util conn = new java_db_util();
		Connection con = conn.getConnection();
		for(int i=0;i<good_id.length;i++)
		{
			String sql = "UPDATE `order` SET count=? WHERE cust_acc = ? and good_id = ? and state='order';" ;
			PreparedStatement prest = con.prepareStatement(sql);
			prest.setString(1, count[i]);
			prest.setString(2, acc);
			prest.setString(3, good_id[i]);
			prest.executeUpdate();
			System.out.println(count[i]);
			System.out.println(good_id[i]);
			

		}
		con.close();
	}
	//結帳
	public void bill(String acc) throws SQLException, ClassNotFoundException
	{
		java_db_util conn = new java_db_util();
		Connection con = conn.getConnection();
		String sql = "SELECT * from `order`  where state='order' and cust_acc = ?;" ;
		PreparedStatement prest = con.prepareStatement(sql);
		prest.setString(1,acc);
		ResultSet rs = prest.executeQuery();
		while (rs.next())
		{
			 sql = " UPDATE `wine111` SET store=store-? where  id = ?;" ;
			 prest = con.prepareStatement(sql);
			 prest.setInt(1,rs.getInt("count"));
			 prest.setString(2,rs.getString("good_id"));
			 prest.executeUpdate();
		}
		sql = "UPDATE `order` SET state='bill' WHERE cust_acc = ?;" ;
		prest = con.prepareStatement(sql);
		prest.setString(1,acc);
		prest.executeUpdate();
		con.close();
	}
	//確認庫存
	public boolean check_bill (String acc) throws ClassNotFoundException, SQLException
	{
		java_db_util conn = new java_db_util();
		Connection con = conn.getConnection();
		String sql = "SELECT order.count,wine111.store from `order`,wine111  where order.state='order' and order.cust_acc =? and order.good_id=wine111.id";
		PreparedStatement prest = con.prepareStatement(sql);
		prest.setString(1,acc);
		ResultSet rs = prest.executeQuery();
		while(rs.next())
		{
			if(rs.getInt("count")>rs.getInt("store"))
			{return false;}
		}
		return true;
		
	}
	//獲得顧客訂單
	public List<mem_order> cus_order(String acc) throws ClassNotFoundException, SQLException
	{
		
		java_db_util conn = new java_db_util();
		Connection con = conn.getConnection();
		String sql = "SELECT SUM(`order`.count) as count,`wine111`.price,`wine111`.id,`wine111`.name,`wine111`.pic,`order`.state FROM `order` \r\n" + 
				"INNER JOIN `wine111`\r\n" + 
				"where id=good_id and cust_acc=? and order.state='order'  " + 
				"GROUP BY `id`;";
		PreparedStatement prest = con.prepareStatement(sql);
		prest.setString(1, acc);
		ResultSet rs = prest.executeQuery();
		List<mem_order> list = new ArrayList<mem_order>();
		while (rs.next())
		{
			mem_order cus_order = new mem_order();
			cus_order.setCount(rs.getInt("count"));
			cus_order.setId(rs.getString("id"));
			cus_order.setPrice(rs.getInt("price"));
			cus_order.setName(rs.getString("name"));
			cus_order.setPic(rs.getString("pic"));
			list.add(cus_order);
		}
		

		if(list.isEmpty())
		{
			con.close();
			return null;
		}
		else {
			con.close();
			return list;
		}
		
	}
	//獲得顧客結帳訂單
	public List<mem_order> all_bill() throws ClassNotFoundException, SQLException
	{
		
		java_db_util conn = new java_db_util();
		Connection con = conn.getConnection();
		String sql = "SELECT `order`.count,`wine111`.price,`wine111`.id,`wine111`.name,`wine111`.pic,`order`.state ,`order`.cust_acc FROM `order` \r\n" + 
				"INNER JOIN `wine111`\r\n" + 
				"where id=good_id  and order.state='bill' ; ";
		PreparedStatement prest = con.prepareStatement(sql);
		ResultSet rs = prest.executeQuery();
		List<mem_order> list = new ArrayList<mem_order>();
		while (rs.next())
		{
			mem_order cus_order = new mem_order();
			cus_order.setCount(rs.getInt("count"));
			cus_order.setId(rs.getString("id"));
			cus_order.setPrice(rs.getInt("price"));
			cus_order.setName(rs.getString("name"));
			cus_order.setPic(rs.getString("pic"));
			cus_order.setBuy_acc(rs.getString("cust_acc"));
			list.add(cus_order);
		}
		

		if(list.isEmpty())
		{
			con.close();
			return null;
		}
		else {
			con.close();
			return list;
		}
		
	
}
	//獲得客戶結帳訂單(個人的)
	public List<mem_order> all_bill(String acc) throws ClassNotFoundException, SQLException
	{
		
		java_db_util conn = new java_db_util();
		Connection con = conn.getConnection();
		String sql = "SELECT `order`.count,`wine111`.price,`wine111`.id,`wine111`.name,`wine111`.pic,`order`.state ,`order`.cust_acc FROM `order` \r\n" + 
				"INNER JOIN `wine111`\r\n" + 
				"where id=good_id  and order.state='bill' and order.cust_acc=? ; ";
		PreparedStatement prest = con.prepareStatement(sql);
		prest.setString(1, acc);
		ResultSet rs = prest.executeQuery();
		List<mem_order> list = new ArrayList<mem_order>();
		while (rs.next())
		{
			mem_order cus_order = new mem_order();
			cus_order.setCount(rs.getInt("count"));
			cus_order.setId(rs.getString("id"));
			cus_order.setPrice(rs.getInt("price"));
			cus_order.setName(rs.getString("name"));
			cus_order.setPic(rs.getString("pic"));
			cus_order.setBuy_acc(rs.getString("cust_acc"));
			list.add(cus_order);
		}
		

		if(list.isEmpty())
		{
			con.close();
			return null;
		}
		else {
			con.close();
			return list;
		}
		
	
}
	
	
	
	
}
