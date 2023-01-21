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
		System.out.println("서비스쪽 잘들어왔는지=>"+loginUser);
		return dao.login(loginUser);
		
	}
	



	
}
