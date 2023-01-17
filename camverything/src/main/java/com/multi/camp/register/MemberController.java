package com.multi.camp.register;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class MemberController {
	
//mybatis용..?
	MemberService service;
	public MemberController() {
		
	}
	
	@Autowired
	public MemberController(MemberService service) {
		super();
		this.service = service;
	}
	
	@RequestMapping(value = "/main/insert.do", method = RequestMethod.GET)
	public String showView() {
		return "main/register";
	}
	@RequestMapping(value = "/main/insert.do", method = RequestMethod.POST)
	public String insert(MemberDTO member) {
		System.out.println("Member=>"+member);
//		service.insert(member);
//		return "main/login";
		int result = service.insert(member);
		if(result==1) {
			return "index";
		}
		return "redirect:/main/register";
	}
	//아이디 중복체크
	@RequestMapping(value = "/ajax",produces = "application/text;charset=utf-8")
	@ResponseBody
	public String logintest(String id) {
		String msg = "";
		if(id.equals("11111")) {
			msg = "사용불가능한 아이디입니다";
		}else {
			msg = "사용가능 아이디입니다";
		}
		return msg;
	}
	//닉네임 중복체크
	@RequestMapping(value = "/ajaxnick",produces = "application/text;charset=utf-8")
	@ResponseBody
	public String nicktest(String nickname) {
		String msg2 = "";
		if(nickname.equals("11")) {
			msg2 = "사용불가능한 닉네임입니다";
		}else {
			msg2 = "사용가능 닉네임입니다";
		}
		return msg2;
	}
	
}