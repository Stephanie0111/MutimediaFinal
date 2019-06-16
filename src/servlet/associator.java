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


@WebServlet("/associator")
public class associator extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		order_dao o_dao = new order_dao();
		try {
			HttpSession session = request.getSession();
			List<mem_order> m_order= o_dao.all_bill((String) session.getAttribute("memAcc"));
			request.setAttribute("order", m_order);
			
		} 
		 catch (Exception e) {

		}
		request.getRequestDispatcher("/associator.jsp").forward(request,response);
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	}

}
