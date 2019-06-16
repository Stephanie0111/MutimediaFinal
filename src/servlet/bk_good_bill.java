package servlet;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.order_dao;
import domain.mem_order;


@WebServlet("/bk_good_bill")
public class bk_good_bill extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		order_dao o_dao = new order_dao();
		try {
			List<mem_order> m_order= o_dao.all_bill();
			request.setAttribute("order", m_order);
			
		} 
		 catch (Exception e) {

		}
		request.getRequestDispatcher("/bk_bill2.jsp").forward(request,response);
		
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

}
