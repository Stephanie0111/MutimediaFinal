package servlet;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.good_dao;
import domain.Goods;


@WebServlet("/bk_good_chang")
public class bk_good_chang extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html; charset=UTF-8");
		response.setCharacterEncoding("UTF-8");
		String method = (String)request.getParameter("method");
		String id = (String)request.getParameter("but");
		
		System.out.print(id);
		good_dao g_dao = new good_dao();
		Goods new_good = new Goods();
		if(method.equals("ad_st"))
		{
			try {
				String store = request.getParameter("amount");
				int in_store = Integer.parseInt(store);
			g_dao.add_good_store(id,in_store);
			response.getWriter().print("<script language='javascript'>alert('增加成功')</script>");
			response.setHeader("refresh", "1;URL=/final/bk_good?page=2");
			} 
			catch (Exception e) {}
		}
		if(method.equals("de_st"))
		{
			try {
				String store = request.getParameter("amount");
				int in_store = Integer.parseInt(store);
			g_dao.dele_good_store(id,in_store);
			response.getWriter().print("<script language='javascript'>alert('減少成功')</script>");
			response.setHeader("refresh", "1;URL=/final/bk_good?page=2");
			} 
			catch (Exception e) {}
		}
		if(method.equals("add_good"))
		{
			try {
			new_good.setFrom(request.getParameter("good_from"));
			new_good.setId(request.getParameter("good_num"));
			new_good.setName(request.getParameter("good_name"));
			new_good.setPic(request.getParameter("good_pic"));
			new_good.setPrice(Integer.parseInt(request.getParameter("good_price")));
			new_good.setState(request.getParameter("good_state"));
			new_good.setStore(Integer.parseInt(request.getParameter("good_store")));
			new_good.setYears(request.getParameter("good_year"));
			g_dao.add_good(new_good);
			response.getWriter().print("<script language='javascript'>alert('新增成功')</script>");
			response.setHeader("refresh", "1;URL=/final/bk_good?page=2");
			} 
			catch (Exception e) {}
		}	
		
	}
}


