package com.multi.camp.register;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.multi.camp.login.LoginDTO;

@Repository
public class MemberDAOImpl implements MemberDAO{
		
	//mybatis핵심클래스를 이용해 sql실행
	SqlSession sqlSession;
	public MemberDAOImpl() {
		
	}
	@Autowired
	public MemberDAOImpl(SqlSession sqlSession) {
		super();
		this.sqlSession = sqlSession;
	}

	@Override
	public int insert(LoginDTO member) {
		System.out.println("memberDAO"+member);
		return sqlSession.insert("com.multi.camp.register", member);
	}

}
