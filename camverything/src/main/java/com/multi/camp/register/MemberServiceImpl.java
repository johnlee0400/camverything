package com.multi.camp.register;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

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
	public int insert(MemberDTO member) {
		return dao.insert(member);
	}
	@Override
	public int insert(MemberDTO member, HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		return 0;
	}

}
