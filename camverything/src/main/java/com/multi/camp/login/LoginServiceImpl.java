package com.multi.camp.login;



import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class LoginServiceImpl implements LoginService {
	LoginDAO dao;
	
	@Autowired
	public LoginServiceImpl(LoginDAO dao) {
		super();
		this.dao = dao;
	}

	@Override
	public LoginDTO login(LoginDTO loginUser) {
		LoginDTO user = dao.login(loginUser);
		System.out.println("serviceImpl 확인 :"+user);
		if(user!=null) {
			System.out.println("!!!로그인성공!!!");
		}
		return user;
		
	}
	



	
}
