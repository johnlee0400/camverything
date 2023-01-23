package com.multi.camp.register;

import com.multi.camp.login.LoginDTO;

//DAO메소드 호출
public interface MemberService {
	//회원가입
	int insert(LoginDTO member);
	
	//회원정보수정
	int update(LoginDTO member);

	//회원정보삭제
	int delete(String id);


}
