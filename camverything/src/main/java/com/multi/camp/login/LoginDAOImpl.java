package com.multi.camp.member;


import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class MemberDAOImpl implements MemberDAO {
	SqlSession sqlSession;
	
	
	@Autowired
	public MemberDAOImpl(SqlSession sqlSession) {
		super();
		this.sqlSession = sqlSession;
	}

	@Override
	public MemberDTO login(MemberDTO loginUser) {
		System.out.println(loginUser + "----------dao------------");
		MemberDTO user = sqlSession.selectOne("com.multi.camp.member.login", loginUser);
		System.out.println(user);
		return user;
	}

}
