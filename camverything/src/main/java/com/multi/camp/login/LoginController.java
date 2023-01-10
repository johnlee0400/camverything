package com.multi.camp.login;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;


@Controller
@RequestMapping("/test")
@SessionAttributes("user")
public class LoginController {
	LoginService service;


	@Autowired
	public LoginController(LoginService service) {
		super();
		this.service = service;
	}

	
	@RequestMapping(value = "/login.do" , method = RequestMethod.POST)
	public ModelAndView login(LoginDTO loginuserInfo, HttpServletRequest request) {
		ModelAndView mav = new ModelAndView();
		String viewName = "";
		LoginDTO user = service.login(loginuserInfo);
		if (user !=null) {
			System.out.println("로그인성공");
			HttpSession session = request.getSession();
			session.setAttribute("user", user);
			viewName =user.getId();
		}else {
			System.out.println("로그인실패");
		}
		return mav;
	}
	
	@RequestMapping("/main/login")
	public String springlogin(LoginDTO loginUserInfo,Model model) {
		System.out.println("스프링이 제공하는 @SessionAttributes를 이용해서 세션처리하기");
		LoginDTO user = service.login(loginUserInfo);
		String viewName = "";
		if (user != null) {
			model.addAttribute("user",user);
		} else { // 로그인실패
			viewName = "login";
		}
		return "login";
	}
	}


