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


@WebServlet("/bk_good")
public class bk_good extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String page = (String)request.getParameter("page");
		good_dao dao = new good_dao();
		String search =  request.getParameter("search");
		if (page==null)
		{
			page="1";
		}
		if (search==null)
		{
			search="%";
		}
		try {
			List<Goods> list = dao.get_res(search,"%");
			request.setAttribute("list", list);
		} catch (Exception e) {
			e.printStackTrace();}
		if (page.equals("1"))
		{
		request.getRequestDispatcher("/bk_product.jsp").forward(request,response);
		}
		else if (page.equals("2"))
		{
			request.getRequestDispatcher("/bk_product_change.jsp").forward(request,response);
		}
		
		
	
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	}

}
