package com.multi.camp.register;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.multi.camp.login.LoginDTO;

//DAO메소드 호출
public interface MemberService {
	//회원가입
	int insert(LoginDTO member);

	int insert(LoginDTO member, HttpServletRequest request, HttpServletResponse response);
}
