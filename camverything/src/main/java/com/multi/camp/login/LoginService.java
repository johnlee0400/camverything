package com.multi.camp.login;


import org.springframework.stereotype.Service;

@Service
public interface LoginService {
	public LoginDTO login(LoginDTO dto);
	
	//마이페이지 정보수정 동기화용
	public LoginDTO selectUpdatedInfo(LoginDTO loginUser);
}
