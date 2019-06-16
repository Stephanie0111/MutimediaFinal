package servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.good_dao;


@WebServlet("/bk_good_add")
public class bk_good_add extends HttpServlet {
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
		if(method.equals("up"))
		{
			try {
			g_dao.up_good(id);
			response.getWriter().print("<script language='javascript'>alert('上架成功')</script>");
			response.setHeader("refresh", "1;URL=/final/bk_good");
			} 
			catch (Exception e) {}
		}
		if(method.equals("down"))
		{
			try {
			g_dao.down_good(id);
			response.getWriter().print("<script language='javascript'>alert('下架成功')</script>");
			response.setHeader("refresh", "1;URL=/final/bk_good");
			} 
			catch (Exception e) {}
		}
		if(method.equals("sale"))
		{
			try {
			String sale = request.getParameter("b_sale");
			System.out.print(sale);
			Float rate =Float.valueOf(sale);
			System.out.print(rate);
			g_dao.good_onsale(id, rate);
			response.getWriter().print("<script language='javascript'>alert('折扣成功')</script>");
			response.setHeader("refresh", "1;URL=/final/bk_good");
			} 
			catch (Exception e) {}
		}			
	}

}
