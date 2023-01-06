package com.multi.camp.register;
//mybatis sqlSession 이용해 작업

import org.springframework.stereotype.Repository;


public interface MemberDAO {
	//회원가입 - db에 처리
	int insert(MemberDTO member);
	
}
