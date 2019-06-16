package servlet;

import java.io.IOException;

import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.good_dao;
import domain.Goods;


@WebServlet("/goods")
public class goodservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
      

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		good_dao dao = new good_dao();
		String search =  request.getParameter("search");
		if (search==null)
		{
			search="%";
		}
		try {
			List<Goods> list = dao.get_res(search,"1");
			request.setAttribute("list", list);
		} catch (Exception e) {
			e.printStackTrace();}

		request.getRequestDispatcher("/goods.jsp").forward(request,response);
		
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	}

}
