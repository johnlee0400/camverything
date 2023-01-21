package com.multi.camp.register;
//mybatis sqlSession 이용해 작업

import org.springframework.stereotype.Repository; 

import com.multi.camp.login.LoginDTO;


public interface MemberDAO {
	//회원가입 - db에 처리
	int insert(LoginDTO member);
	
	//회원정보 수정
	int update(LoginDTO member);
		
	//회원정보 삭제
	int delete(String id);
}
