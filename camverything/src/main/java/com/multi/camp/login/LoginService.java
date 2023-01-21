package com.multi.camp.login;


import javax.servlet.http.HttpServletRequest; 
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Service;



@Service
public interface LoginService {
	public LoginDTO login(LoginDTO dto);

	
}
