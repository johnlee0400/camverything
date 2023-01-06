package com.multi.camp.register;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

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
		service.insert(member);
		return "main/login";
	}
}
