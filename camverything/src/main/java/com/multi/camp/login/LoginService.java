package com.multi.camp.login;


import org.springframework.stereotype.Service;

@Service
public interface LoginService {
	public LoginDTO login(LoginDTO dto);
}
