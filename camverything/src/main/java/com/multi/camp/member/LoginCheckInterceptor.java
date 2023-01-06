package com.multi.camp.member;

import java.io.IOException;
import java.net.http.HttpResponse;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

public class LoginCheckInterceptor extends HandlerInterceptorAdapter {
	
	public boolean preHande(HttpServletRequest request, HttpServletResponse response ) throws Exception {
		
		HttpSession session = request.getSession(false);
		if(session!=null) {
			MemberDTO user = (MemberDTO) session.getAttribute("user");
			System.out.println("!!!!!!!");
		if(user==null) {
			response.sendRedirect("/main/login");
			return false;
		}
		}
		return true;
	}
}
