package com.multi.camp.register;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

//DAO메소드 호출
public interface MemberService {
	//회원가입
	int insert(MemberDTO member);

	int insert(MemberDTO member, HttpServletRequest request, HttpServletResponse response);
}
