package com.multi.camp.login;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

public class LoginCheckInterceptor extends HandlerInterceptorAdapter {
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		//로그인사용자인경우 세션에 user라는 이름으로 어트리뷰트가 저장됨
		//세션이 만들어있지 않으면 null을 리턴
		HttpSession session = request.getSession(false);
		if(session!=null) {
			LoginDTO user = (LoginDTO) session.getAttribute("user");
			if(user==null) {//로그인하지 않은 상태
				response.sendRedirect("/camp/main/login.do");
				return false;//다음 컨트롤러를 실행할 수 없도록 처리
			}
		}
		return true;
	}
	
}
