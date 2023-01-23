package com.multi.camp.register;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.multi.camp.login.LoginDTO;

//MemberDAO의 메소드 호출
//-> 컨트롤러에서 받은 데이터를 dao로 넘기거나 dao에서 받은 데이터를 가공해 컨트롤러로 넘김
//-> 트랜잭션 처리
@Service
public class MemberServiceImpl implements MemberService{
	MemberDAO dao;

	public MemberServiceImpl() {

	}
	@Autowired
	public MemberServiceImpl(MemberDAO dao) {
		super();
		this.dao = dao;
	}

	@Override
	public int insert(LoginDTO member) {
		return dao.insert(member);
	}
	
	//회원정보 수정
	@Override
	public int update(LoginDTO member) {
		return dao.update(member);
	}
	@Override
	public int delete(String id) {
		return dao.delete(id);
	}
	
}
