package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import database.java_db_util;
import domain.member;

public class member_dao {
//獲得會員
	public List<member> get_mem(String search) throws ClassNotFoundException, SQLException {

		if (search=="")
		{
			search="%";
		}
		java_db_util conn = new java_db_util();
		Connection con= conn.getConnection();
		String sql = "SELECT * FROM member where account=?";
		PreparedStatement prest = con.prepareStatement(sql);
		prest.setString(1, search);
		ResultSet rs = prest.executeQuery();
		
		List<member> list = new ArrayList<member>();
	    while(rs.next()){
	    	member mem = new member();
	        mem.setAccount(rs.getString("account"));
	        mem.setPassword(rs.getString("password"));
	        mem.setName(rs.getString("name"));
	        mem.setMail(rs.getString("mail"));
	        mem.setLevel(rs.getString("level"));
	        list.add(mem);
	    }
	    con.close();
	    return list;
	}

	//確認會員登入
	public boolean check_mem(String acc,String pass) throws SQLException, ClassNotFoundException {
		java_db_util conn = new java_db_util();
		Connection con = conn.getConnection();
		String sql = "SELECT * from member where account=? and password=?";
		PreparedStatement prest = con.prepareStatement(sql);
		prest.setString(1, acc);
		prest.setString(2, pass);
		ResultSet rs = prest.executeQuery();
		if(rs.next())
		{
			con.close();
			return true;
		}	
		else
		{
			con.close();
			return false;
		}
	}
	
//增加會員
	public boolean add_mem(member a) throws ClassNotFoundException, SQLException {
		String acc= a.getAccount();
		String pass=a.getPassword();
		String Name=a.getName();
		String Mail=a.getMail();
		String lel=a.getLevel();
		java_db_util conn = new java_db_util();
		Connection con= conn.getConnection();
		

		String sql = "SELECT * from member WHERE account=?"; 
		PreparedStatement prest = con.prepareStatement(sql);
		prest.setString(1,acc);
		ResultSet rs = prest.executeQuery();
		if(rs.next())
		{
			System.out.print(acc);
			System.out.print("yes");
			System.out.print(rs.getString("account"));
			con.close();
			return false;
		}

		sql = "SELECT * from member WHERE mail=?"; 
		prest = con.prepareStatement(sql);
		prest.setString(1,Mail);
		if(rs.next())
		{
			System.out.print(Mail);
			System.out.print("yes");
			System.out.print(rs.getString("mail"));
			con.close();
			return false;
		}

	    sql="INSERT INTO member VALUES (?,?,?,?,?);";
	    prest = con.prepareStatement(sql);
	    prest.setString(1,acc );
	    prest.setString(2,pass );
	    prest.setString(3,Name );
	    prest.setString(4,Mail );
	    prest.setString(5,lel );
	    prest.executeUpdate();
	    con.close();
	    return true;
	}
	
//修改會員
	public boolean change_mem(member a) throws ClassNotFoundException, SQLException {
		String acc= a.getAccount();
		String pass=a.getPassword();
		String Name=a.getName();
		String Mail=a.getMail();
		java_db_util conn = new java_db_util();
		Connection con= conn.getConnection();
		String sql = "SELECT * FROM member where account like ? "; 
		PreparedStatement prest = con.prepareStatement(sql);
		prest.setString(1,acc );
		ResultSet rs = prest.executeQuery();
	    if(rs.next()){
	    	sql="UPDATE member SET password = ?,name = ?"
	    			+ ",mail = ?  WHERE account = ? ;"  ;
	    	prest = con.prepareStatement(sql);
		    prest.setString(1,pass );
		    prest.setString(2,Name );
		    prest.setString(3,Mail );
		    prest.setString(4,acc );
		    prest.executeUpdate();
		    con.close();
		    return true;
		    
	    }
	    con.close();
	    return false;
	}

	
	
	//刪除會員

	public boolean dele_mem(member a) throws ClassNotFoundException, SQLException {
		String acc= a.getAccount();
		java_db_util conn = new java_db_util();
		Connection con= conn.getConnection();
		String sql = "SELECT * FROM member where account like ? "; 
		PreparedStatement prest = con.prepareStatement(sql);
		ResultSet rs = prest.executeQuery();
	    if(rs.next()){
	    	 sql="DELETE from member  WHERE account = ? ;";
	    	 prest.setString(1,acc );
	 	     prest = con.prepareStatement(sql);
	 	     prest.executeUpdate();
	 	    con.close();
	    	 return true;
	    }
	    con.close();
	    return false;
	}
	
	


//獲取計數器人數
	public String count() throws ClassNotFoundException, SQLException {
	
		java_db_util conn = new java_db_util();
		Connection con= conn.getConnection();
		String sql = "SELECT count(*) as count FROM address ; "; 
		PreparedStatement prest = con.prepareStatement(sql);
		ResultSet rs = prest.executeQuery();
		rs.next();
		String count1=rs.getString("count");
		con.close();
	    return count1 ;
	    
	}
//新增計數器人數
	public void address(String ip) throws SQLException, ClassNotFoundException
	{
		java_db_util conn = new java_db_util();
		Connection con= conn.getConnection();

		String sql = "SELECT * FROM address where ip=? ;"; 
		PreparedStatement prest = con.prepareStatement(sql);
		prest.setString(1, ip);
		ResultSet rs = prest.executeQuery();
		
	    if(rs.next())
	    {
	    	sql="UPDATE address SET count=count+1 WHERE ip=? ;"  ;
	    	prest = con.prepareStatement(sql);
	    	prest.setString(1, ip);
	    	prest.executeUpdate();
	    	con.close();
	    }
	    else{

	    	sql = "INSERT INTO address values(?,1)  "; 
			prest = con.prepareStatement(sql);
			prest.setString(1, ip);
			prest.executeUpdate();
			con.close();

	    }
	    
	}
}





/*	public static void main (String args[] )
{
	member abc = new member();
	abc.setAccount("account11");
	abc.setPassword("password11");
	abc.setName("11");
	abc.setMail("mail11");
	abc.setLevel("level2");
	member_dao ccc = new member_dao();
	try {
		System.out.print(ccc.add_mem(abc));
	} catch (ClassNotFoundException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
 }*/
