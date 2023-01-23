package com.multi.camp.register;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
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

		return sqlSession.insert("com.multi.camp.register", member);
	}
	
	//회원정보수정
	@Override
	public int update(LoginDTO member) {
		System.out.println("------넘어감-----");
		System.out.println(member);
		return sqlSession.update("com.multi.camp.mypage_update",member);
	}
	@Override
	public int delete(String id) {
		System.out.println(id);
		return sqlSession.delete("com.multi.camp.mypage_delete",id);
	}
}