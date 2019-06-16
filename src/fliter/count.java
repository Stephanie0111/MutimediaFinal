package fliter;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import dao.member_dao;




@WebFilter("/*")
public class count implements Filter {


    public count() {
    }

	public void destroy() {

	}


	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
		HttpServletRequest htrequest = (HttpServletRequest) request;
		HttpSession session = htrequest.getSession();
		member_dao m_dao = new member_dao();
		String ip="";
		if(session.isNew())
		{
			
			try {
				 ip = htrequest.getHeader("x-forwarded-for");
		         if(ip == null || ip.length() == 0 || "unknown".equalsIgnoreCase(ip)) {
		             ip = htrequest.getHeader("Proxy-Client-IP");
		         }
		         if(ip == null || ip.length() == 0 || "unknown".equalsIgnoreCase(ip)) {
		             ip = htrequest.getHeader("WL-Proxy-Client-IP");
		         }
		         if(ip == null || ip.length() == 0 || "unknown".equalsIgnoreCase(ip)) {
		            ip = htrequest.getRemoteAddr();
		        }
		       
		        System.out.print(ip);
		 		m_dao.address(ip);
		 		session.setAttribute("count",m_dao.count());			
			} 
			catch (Exception e) {

			}
			
		}
		
		chain.doFilter(request, response);
		
	}


	public void init(FilterConfig fConfig) throws ServletException {
		// TODO Auto-generated method stub
	}

}
