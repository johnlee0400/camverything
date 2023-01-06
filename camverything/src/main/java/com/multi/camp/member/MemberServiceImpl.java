package com.multi.camp.member;



import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class MemberServiceImpl implements MemberService {
	MemberDAO dao;
	
	@Autowired
	public MemberServiceImpl(MemberDAO dao) {
		super();
		this.dao = dao;
	}

	@Override
	public MemberDTO login(MemberDTO loginUser) {
		MemberDTO user = dao.login(loginUser);
		System.out.println("service"+user);
		if(user!=null) {
			System.out.println("!!!로그인성공!!!");
		}
		return user;
	}

	
}
