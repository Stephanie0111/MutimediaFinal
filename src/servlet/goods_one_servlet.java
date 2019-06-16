package servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.net.URL;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.board_dao;
import dao.good_dao;
import domain.Goods;
import domain.text_board;


@WebServlet("/goods_one")
public class goods_one_servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			
			String search =  request.getParameter("search");
			good_dao good = new good_dao();
			board_dao board = new board_dao();
			HttpSession session = request.getSession();			
			try {
				List<Goods> list_good = good.get_res(search,"1");
				request.setAttribute("list_good", list_good);
				List<text_board> list_message = board.get_message(list_good.get(0).getId());
				request.setAttribute("list_message", list_message);
				String acc = (String) session.getAttribute("memAcc");
				request.setAttribute("list_sell", good.get_sell(list_good.get(0).getId()));
				request.setAttribute("score", board.get_scope(list_good.get(0).getId()));
				System.out.print(request.getAttribute("list_sell"));
			} catch (Exception e) {
				e.printStackTrace();
				}
	//		System.out.print(request.getHeaders("Referer").nextElement());
	//		response.setHeader("hi", "hi");
			request.getRequestDispatcher("/goods_one.jsp").forward(request,response);



		
		
		
		 
	}
		
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	}

}
