package servlet;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.member_dao;
import dao.order_dao;
import domain.mem_order;
import domain.member;


@WebServlet("/login")
public class login extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
			
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html; charset=UTF-8");
		response.setCharacterEncoding("UTF-8");
		request.setCharacterEncoding("UTF-8");
		String method = (String)request.getParameter("method");
		if(method.equals("login_in"))
		{
			HttpSession session = request.getSession();
			member_dao check_mem = new member_dao();
			String acc= request.getParameter("account");
			String pass=request.getParameter("password");
			order_dao mem_order = new order_dao();
			try {
			if(check_mem.check_mem(acc,pass))
			{
				List<mem_order> m_order= mem_order.cus_order(acc);
				List<member> memlist=check_mem.get_mem(acc);
				session.setAttribute("memlist",memlist);
				session.setAttribute("memlevel",memlist.get(0).getLevel());
				session.setAttribute("memAcc",memlist.get(0).getAccount());
				session.setAttribute("memName",memlist.get(0).getName());
				session.removeAttribute("mem_order");
				session.setAttribute("mem_order",m_order);
				response.getWriter().print("<script language='javascript'>alert('登入成功')</script>");
				response.setHeader("refresh", "1;URL=/final/index");
				
				
				
			}
			else {
				response.getWriter().print("<script language='javascript'>alert('登入失敗')</script>");
				response.setHeader("refresh", "1;URL=/final/index");

			}
			} catch (SQLException e) {
				e.printStackTrace();
			} catch (ClassNotFoundException e) {
				e.printStackTrace();
			}
			
		}
		else if (method.equals("login_out"))
		{
			HttpSession session = request.getSession();
			session.removeAttribute("memlist");
			session.removeAttribute("memlevel");
			session.removeAttribute("memAcc");
			session.removeAttribute("mem_order");
			session.removeAttribute("memName");
			response.getWriter().print("<script language='javascript'>alert('登出成功')</script>");
			response.setHeader("refresh", "1;URL=/final/index");
		}
		else if (method.equals("login_change"))
		{
			member_dao check_mem = new member_dao();
			member_dao m_dao = new member_dao();
			HttpSession session = request.getSession();
			session.removeAttribute("memlist");
			session.removeAttribute("memAcc");
			session.removeAttribute("memName");
			String acc = request.getParameter("account");
			member new_mem= new member();
			new_mem.setAccount(request.getParameter("account"));
			new_mem.setMail(request.getParameter("email"));
			new_mem.setName(request.getParameter("name"));
			new_mem.setPassword(request.getParameter("password"));
			try {
				m_dao.change_mem(new_mem);
				List<member> memlist=check_mem.get_mem(acc);
				session.setAttribute("memlist",memlist);
				session.setAttribute("memAcc",memlist.get(0).getAccount());
				session.setAttribute("memName",memlist.get(0).getName());
				response.getWriter().print("<script language='javascript'>alert('修改成功')</script>");
				response.setHeader("refresh", "1;URL=/final/associator.jsp");

			}catch (Exception e) {
				e.printStackTrace();
			}
		}
	}
}
