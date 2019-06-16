package dao;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import database.java_db_util;
import domain.Goods;
import domain.member;;
public class good_dao {
	//prest.executeUpdate()
	//獲取商品結果
	public List<Goods> get_res(String search,String state) throws ClassNotFoundException, SQLException {
	java_db_util conn = new java_db_util();
	Connection con= conn.getConnection();
	String sql = "SELECT * FROM wine111 where (name like ? or id like ? )AND state like ?";
	PreparedStatement prest = con.prepareStatement(sql);

	prest.setString(1, "%"+search+"%");
	prest.setString(2, "%"+search+"%");
	prest.setString(3, state);
	
	ResultSet rs = prest.executeQuery();
	List<Goods> list = new ArrayList<Goods>();
    while(rs.next()){
        Goods goods = new Goods();
        goods.setPic(rs.getString("pic"));
        goods.setId(rs.getString("id"));
        goods.setName(rs.getString("name"));
        goods.setPrice(rs.getInt("price"));
        goods.setFrom(rs.getString("from"));
        goods.setYears(rs.getString("years"));
        goods.setState(rs.getString("state"));
        goods.setStore(rs.getInt("store"));
        goods.setO_price(rs.getInt("o_price"));
        goods.setB_pic(rs.getString("b_pic"));
        goods.setBg_pic(rs.getString("bg_pic"));
        list.add(goods);
    	}
    con.close();
    return list;
	}

	//獲取熱門商品
	public List<Goods> get_hot() throws ClassNotFoundException, SQLException {
		java_db_util conn = new java_db_util();
		Connection con= conn.getConnection();
		String sql = "SELECT `wine111`.state,`wine111`.b_pic, `order`.good_id, sum(`order`.count) as count,`wine111`.`from`,wine111.pic,wine111.price,wine111.years,wine111.name  FROM `order`\r\n" + 
				"INNER JOIN wine111\r\n" + 
				"where good_id=id  \r\n" + 
				"group by good_id\r\n" + 
				"order by count DESC\r\n" + 
				"limit 3;\r\n" + 
				"";
		PreparedStatement prest = con.prepareStatement(sql);

		
		ResultSet rs = prest.executeQuery();
		List<Goods> list = new ArrayList<Goods>();
	    while(rs.next()){
	        Goods goods = new Goods();
	        goods.setPic(rs.getString("pic"));
	        goods.setId(rs.getString("good_id"));
	        goods.setName(rs.getString("name"));
	        goods.setPrice(rs.getInt("price"));
	        goods.setFrom(rs.getString("b_pic"));
	        goods.setFrom(rs.getString("from"));
	        goods.setYears(rs.getString("years"));
	        goods.setB_pic(rs.getString("b_pic"));
	        list.add(goods);
	    	}
	    con.close();
	    return list;
	}
	
	//獲取銷售量
	public String get_sell(String id) throws ClassNotFoundException, SQLException {
		java_db_util conn = new java_db_util();
		Connection con= conn.getConnection();
		String sql ="SELECT sum(count) as count from `order` where good_id=? and state='bill' GROUP BY good_id; ";
		PreparedStatement prest = con.prepareStatement(sql);
		prest.setString(1, id);
		ResultSet rs = prest.executeQuery();
		if(rs.next()) {
			String count = rs.getString("count");
		    con.close();
		    return count;
		}
		else {
			return "0";
		}
	}
	//設定折扣
	public void good_onsale (String id,float rate) throws ClassNotFoundException, SQLException {
		java_db_util conn = new java_db_util();
		Connection con= conn.getConnection();
		String sql ="update `wine111` set price=o_price*? where id = ?;";
		PreparedStatement prest = con.prepareStatement(sql);
		prest.setFloat(1, rate);
		prest.setString(2, id);
		prest.executeUpdate();
		con.close();

	}
//增加產品
	public boolean add_good(Goods newgood) throws ClassNotFoundException, SQLException {
	String ng_pic  = newgood.getPic();
	String ng_id = newgood.getId();
	String ng_name = newgood.getName();
	Integer ng_price = newgood.getPrice();
	String ng_from = newgood.getFrom();
	String ng_Years = newgood.getYears();
	Integer ng_store = newgood.getStore();
	String ng_state = newgood.getState();
	
	java_db_util conn = new java_db_util();
	
	//判斷產品有無重複name
	Connection con= conn.getConnection();
	String sql = "SELECT * FROM wine111 where name=?";
	PreparedStatement prest = con.prepareStatement(sql);
	prest.setString(1, ng_name);
	ResultSet rs = prest.executeQuery();
	if (rs.next())
	{
		
		System.out.print("no");
		con.close();
		return false;
	}
	//判斷產品有無重複id
	sql = "SELECT * FROM wine111 where id=?";
	prest = con.prepareStatement(sql);
	prest.setString(1, ng_id);
	rs = prest.executeQuery();
	if (rs.next())
	{
		System.out.print("yes");
		con.close();
		return false;
	}
	
	sql="INSERT INTO wine111 VALUES (?,?,?,?,?,?,?,?);";
    prest = con.prepareStatement(sql);
    prest.setString(1,ng_pic );
    prest.setString(2,ng_id );
    prest.setString(3,ng_name );
    prest.setInt(4,ng_price );
    prest.setString(5,ng_from );
    prest.setString(6,ng_Years );
    prest.setInt(7,ng_store );
    prest.setString(8,ng_state );
    prest.executeUpdate();
    con.close();
    return true;
	}

    //刪除產品
	public boolean dele_good(String id) throws ClassNotFoundException, SQLException {
	java_db_util conn = new java_db_util();
	Connection con= conn.getConnection();
	String sql = "DELETE from wine111 WHERE id=?";
	PreparedStatement prest = con.prepareStatement(sql);
	prest.setString(1,id);
	prest.executeUpdate();
	con.close();
    return true;
    
	}
	//上架
	public boolean up_good(String id) throws ClassNotFoundException, SQLException {
		java_db_util conn = new java_db_util();
		Connection con= conn.getConnection();
		String sql = "UPDATE wine111 set state=1 WHERE id=?";
		PreparedStatement prest = con.prepareStatement(sql);
		prest.setString(1,id);
		prest.executeUpdate();
		con.close();
	    return true;
	    
		}
	//下架
		public boolean down_good(String id) throws ClassNotFoundException, SQLException {
			java_db_util conn = new java_db_util();
			Connection con= conn.getConnection();
			String sql = "UPDATE wine111 set state=0 WHERE id=?";
			PreparedStatement prest = con.prepareStatement(sql);
			prest.setString(1,id);
			prest.executeUpdate();
			con.close();
		    return true;
			}
		//增加存貨
		public boolean add_good_store(String id,int store) throws ClassNotFoundException, SQLException {
			java_db_util conn = new java_db_util();
			Connection con= conn.getConnection();
			String sql = "UPDATE wine111 set store=store+? WHERE id=?";
			PreparedStatement prest = con.prepareStatement(sql);
			prest.setInt(1,store);
			prest.setString(2,id);
			prest.executeUpdate();
			con.close();
		    return true;
			}
		//減少存貨
		public boolean dele_good_store(String id,int store) throws ClassNotFoundException, SQLException {
			java_db_util conn = new java_db_util();
			Connection con= conn.getConnection();
			String sql = "UPDATE wine111 set store=store-? WHERE id=?";
			PreparedStatement prest = con.prepareStatement(sql);
			prest.setInt(1,store);
			prest.setString(2,id);
			prest.executeUpdate();
			con.close();
		    return true;
			}
	
	
	//更改商品
	public boolean chang_good(Goods newgood,String oldgood) throws ClassNotFoundException, SQLException {
	String ng_pic  = newgood.getPic();
	String ng_id = newgood.getId();
	String ng_name = newgood.getName();
	Integer ng_price = newgood.getPrice();
	String ng_from = newgood.getFrom();
	String ng_Years = newgood.getYears();	
	Integer ng_store = newgood.getStore();
	String ng_state = newgood.getState();
	
	
	java_db_util conn = new java_db_util();
	Connection con= conn.getConnection();
	String sql = "SELECT * FROM wine111 where id = ?";
	PreparedStatement prest = con.prepareStatement(sql);
	prest.setString(1, oldgood);
	ResultSet rs = prest.executeQuery();
	
    if(rs.next()){
      sql="UPDATE member + "+
      		"SET pic=?,id=?,name=?,price=?,years=?,from=?,store=?,state=? " + 
      		"WHERE id=? ";
      prest = con.prepareStatement(sql);
      prest.setString(1,ng_pic );
      prest.setString(2,ng_id );
      prest.setString(3,ng_name );
      prest.setInt(4,ng_price );
      prest.setString(5,ng_Years );
      prest.setString(6,ng_from );
      prest.setInt(7,ng_store );
      prest.setString(8,ng_state );
      prest.setString(9,oldgood);
      prest.executeUpdate();
      con.close();
      return true;
      
    	}
    con.close();
    return false;
	}
	

}




//for (Object o : list) {
//System.out.println(o);
//}

