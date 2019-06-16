package servlet;

import java.io.IOException;

import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


import dao.order_dao;
import domain.mem_order;


@WebServlet("/order")
public class order extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request,response);
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
	try {
		response.setContentType("text/html; charset=UTF-8");
		response.setCharacterEncoding("UTF-8");
		request.setCharacterEncoding("UTF-8");
		HttpSession session = request.getSession();
		String action = request.getParameter("but");
		String acc = (String) session.getAttribute("memAcc");
		order_dao order_n = new order_dao();
		String url= request.getHeader("Referer");
		if(action.equals("加入購物車"))
		{
			String amount="";
			amount= request.getParameter("amount");
			if (amount==null)
			{
				amount="1";
			}
			if(order_n.add_order(acc, request.getParameter("id"),amount,request.getParameter("state")))
			{
				List<mem_order> m_order= order_n.cus_order(acc);
				session.removeAttribute("mem_order");
				session.setAttribute("mem_order",m_order);
				response.getWriter().print("<script language='javascript'>alert('新增成功')</script>");
				response.setHeader("refresh", "1;URL="+url);
			}
			else
			{
				response.getWriter().print("<script language='javascript'>alert('新增失敗，已有相同商品')</script>");
				response.setHeader("refresh", "1;URL="+url);
			}
		}
		else if(action.equals("直接購買"))
		{
			String amount="";
			amount= request.getParameter("amount");
			if (amount==null)
			{
				amount="1";
			}
				
			if(order_n.add_order(acc, request.getParameter("id"),amount,request.getParameter("state")))
			{
				List<mem_order> m_order= order_n.cus_order(acc);
				session.removeAttribute("mem_order");
				session.setAttribute("mem_order",m_order);
				response.getWriter().print("<script language='javascript'>alert('新增成功')</script>");
				response.setHeader("refresh", "1;URL=/final/order");
			}
			else
			{
				response.getWriter().print("<script language='javascript'>alert('新增失敗，已有相同商品')</script>");
				response.setHeader("refresh", "1;URL=/final/order.jsp");
			}
		}

		else if(action.equals("修改"))
		{
			String[] count = request.getParameterValues("amount");
			String[] id = request.getParameterValues("id");

			order_n.change_order(acc, id ,count);
			List<mem_order> m_order= order_n.cus_order(acc);
			session.removeAttribute("mem_order");
			session.setAttribute("mem_order",m_order);
			response.getWriter().print("<script language='javascript'>alert('修改成功')</script>");
			response.setHeader("refresh", "1;URL=/final/order.jsp");
		}
		else if (action.equals("結帳"))
		{
			if(order_n.check_bill(acc))
			{
			order_n.bill(acc);
			session.removeAttribute("mem_order");
			response.getWriter().print("<script language='javascript'>alert('結帳成功')</script>");
			response.setHeader("refresh", "1;URL=/final/index");
			}
			else
			{
				response.getWriter().print("<script language='javascript'>alert('結帳失敗,超過庫存')</script>");
				response.setHeader("refresh", "1;URL=/final/order.jsp");
			}
		}
		else
		{
			order_n.dele_order(acc,action);
			List<mem_order> m_order= order_n.cus_order(acc);
			session.removeAttribute("mem_order");
			session.setAttribute("mem_order",m_order);
			response.getWriter().print("<script language='javascript'>alert('刪除成功')</script>");
			response.setHeader("refresh", "1;URL=/final/order.jsp");
		}
	}
	catch(Exception e)
	{}
	
	}

}
