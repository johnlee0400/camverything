package com.multi.camp.login;


import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class LoginDAOImpl implements LoginDAO {
	SqlSession sqlSession;
	
	
	@Autowired
	public LoginDAOImpl(SqlSession sqlSession) {
		super();
		this.sqlSession = sqlSession;
	}

	@Override
	public LoginDTO login(LoginDTO loginUser) {
		System.out.println("dao쪽 잘들어왔는지=>"+loginUser);
		return sqlSession.selectOne("com.multi.camp.login", loginUser);
	}

	@Override
	public LoginDTO selectUpdatedInfo(LoginDTO loginUser) {
		return sqlSession.selectOne("com.multi.camp.selectupdate", loginUser);
	}

}
