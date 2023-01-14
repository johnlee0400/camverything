package com.multi.camp.login;

import java.lang.annotation.Repeatable;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class mypageController {
	
	

	public mypageController(){
		
	}
	
	@RequestMapping("/main/mypage")
	public String mypage() {
		return "main/mypage_main";
	}
	
	
}
