package com.multi.camp.login;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

public class LoginCheckInterceptor extends HandlerInterceptorAdapter {
	
	public boolean preHande(HttpServletRequest request, HttpServletResponse response, Object handler ) throws Exception {
		
		HttpSession session = request.getSession(false);
		if(session!=null) {
			LoginDTO user = (LoginDTO) session.getAttribute("user");
			System.out.println("!!!!!!!");
		if(user==null) {
			response.sendRedirect("/camp/loginpage");
			return false;
		}
		}
		return true;
	}
}
