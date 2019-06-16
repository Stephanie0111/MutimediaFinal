package servlet;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.member_dao;
import domain.member;


@WebServlet("/login_add")
public class login_add extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html; charset=UTF-8");
		response.setCharacterEncoding("UTF-8");
		String account =  request.getParameter("account");
		String password =  request.getParameter("password");
		String name =  request.getParameter("name");
		String mail =  request.getParameter("mail");
		String level =  request.getParameter("level");
		String password2 = request.getParameter("password2");
		if (account.equals(""))
		{
			response.getWriter().print("<script language='javascript'>alert('新增失敗,帳號不能為空')</script>");
			response.setHeader("refresh", "1;URL=/final/index");
		}
		else if (password.equals(""))
		{
			response.getWriter().print("<script language='javascript'>alert('新增失敗,密碼不能為空')</script>");
			response.setHeader("refresh", "1;URL=/final/index");
		}
		else if (name.equals(""))
		{
			response.getWriter().print("<script language='javascript'>alert('新增失敗,姓名不能為空')</script>");
			response.setHeader("refresh", "1;URL=/final/index");
		}
		else if (mail.equals(""))
		{
			response.getWriter().print("<script language='javascript'>alert('新增失敗,信箱不能為空')</script>");
			response.setHeader("refresh", "1;URL=/final/index");
		}
		else if (password2.equals(""))
		{
			response.getWriter().print("<script language='javascript'>alert('新增失敗,密碼不能為空')</script>");
			response.setHeader("refresh", "1;URL=/final/index");
		}
		else if (!(password2.equals(password))){
			response.getWriter().print("<script language='javascript'>alert('新增失敗,密碼不相同')</script>");
			response.setHeader("refresh", "1;URL=/final/index");
		}
		else {
		member new_mem = new member();
		new_mem.setAccount(account);
		new_mem.setPassword(password);
		new_mem.setMail(mail);
		new_mem.setName(name);
		new_mem.setLevel(level);
		member_dao test_dao = new member_dao();
		try {
			test_dao.add_mem(new_mem);
			response.getWriter().print("<script language='javascript'>alert('新增成功')</script>");
			response.setHeader("refresh", "1;URL=/final/index");
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		}
		
		
	}


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

}
