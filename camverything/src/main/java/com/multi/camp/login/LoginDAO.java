package com.multi.camp.login;



public interface LoginDAO {

	public LoginDTO login(LoginDTO loginUser);
	
	//마이페이지 정보수정 동기화용
	public LoginDTO selectUpdatedInfo(LoginDTO loginUser);
	
}
