package com.warehouse.pro.filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class LoginFilter implements Filter {

	@Override
	public void destroy() {
		// TODO Auto-generated method stub

	}

	@Override
	public void doFilter(ServletRequest arg0, ServletResponse arg1, FilterChain arg2)
			throws IOException, ServletException {
		 // TODO Auto-generated method stub
		 HttpServletRequest req = (HttpServletRequest)arg0;
	     HttpServletResponse resp =(HttpServletResponse) arg1;
	     HttpSession session = req.getSession();
	     String path = req.getRequestURI();
	    // System.out.println(path);
	     if(session.getAttribute("user")!=null) {
	    	arg2.doFilter(req, resp);
	     }else {
	    	 //放开建立连接路径
	    	 if(path.contains("login.action")) {
	    		 arg2.doFilter(req, resp);
	    	 }else {
	    		 arg2.doFilter(req, resp);
	    		 //resp.sendRedirect("http://localhost:8080/newtobacco/login.jsp");
	    	 }
	     }
	}

	@Override
	public void init(FilterConfig arg0) throws ServletException {
		// TODO Auto-generated method stub

	}

}
