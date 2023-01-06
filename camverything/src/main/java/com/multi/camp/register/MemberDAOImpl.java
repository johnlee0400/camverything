package com.multi.camp.register;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

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
	public int insert(MemberDTO member) {

		return sqlSession.insert("com.multi.camp.register", member);
	}

}
