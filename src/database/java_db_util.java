package database;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class java_db_util {
	
	public Connection getConnection() throws ClassNotFoundException, SQLException   {
	String db_class="com.mysql.cj.jdbc.Driver";
	String url = "jdbc:mysql://localhost:3306/test_db?useSSL=false&serverTimezone=UTC";
	Class.forName(db_class);
	Connection con = DriverManager.getConnection(url,"root","0525");
	return con;
	}

	
	
//	public static void main(String[] argv) throws ClassNotFoundException, SQLException  {
//		Connection con = java_db_util.getConnection();
//		Statement stmt = con.createStatement();
//		String sql="insert into new_table(id,pic) value('hank9','1234');";
//		int r =stmt.executeUpdate(sql);
//		System.out.print(r);
//		System.out.print("hihi");
//	}
}
