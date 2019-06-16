package servlet;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.board_dao;
import domain.text_board;

@WebServlet("/message_board")
public class message_board extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html; charset=UTF-8");
		response.setCharacterEncoding("UTF-8");
		request.setCharacterEncoding("utf-8");
		text_board mess = new text_board();
		board_dao b_dao = new board_dao();
		String message = request.getParameter("message");
		String score = request.getParameter("rating");
		String title = request.getParameter("title");
		String g_id = request.getParameter("good_id");
		String name = request.getParameter("name");
		int score1 = Integer.parseInt(score);
		mess.setGood_id(g_id);
		mess.setMessage(message);
		mess.setName(name);
		mess.setScore(score1);
		mess.setTitle(title);
		try {
			b_dao.add_message(mess);
		} catch (Exception e) {
			e.printStackTrace();
		}
		response.getWriter().print("<script language='javascript'>alert('新增成功')</script>");
		response.setHeader("refresh", "1;URL=/final/goods_one?search="+g_id);
	}

}
