package com.multi.camp.login;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.servlet.ModelAndView;


@Controller
@SessionAttributes("user")
public class LoginController {
	LoginService service;


	@Autowired
	public LoginController(LoginService service) {
		super();
		this.service = service;
	}
	
	@RequestMapping(value = "/loginpage", method = RequestMethod.GET)
	public String loginpage() {
		return "login";
	}
	
	
	@RequestMapping(value = "/login.do" , method = RequestMethod.POST)
	public ModelAndView login(LoginDTO loginuserInfo, HttpServletRequest request) {
		ModelAndView mav = new ModelAndView();
		String viewName = "";
		System.out.println("============================== 에러");
		LoginDTO user = service.login(loginuserInfo);
		if (user !=null) {
//			System.out.println("로그인성공");
			HttpSession session = request.getSession();
			session.setAttribute("user", user);
//			viewName =user.getId();
			viewName = "index";
//			viewName = user.getMenupath();
		}else {
			viewName = "redirect:/login.do";
			System.out.println("로그인실패");
		}
		mav.setViewName(viewName);
		return mav;
	}
	@RequestMapping(value = "/login.do", method = RequestMethod.GET)
	public String login() {
		return "login";
	}
	
	@RequestMapping("/main/login")
	public String springlogin(LoginDTO loginUserInfo,Model model) {
		System.out.println("스프링이 제공하는 @SessionAttributes를 이용해서 세션처리하기");
		LoginDTO user = service.login(loginUserInfo);
		String viewName = "";
		if (user != null) {
			model.addAttribute("user",user);
			viewName = user.getMenupath();
		} else { // 로그인실패
			viewName = "";
		}
		return viewName;
	}
	@RequestMapping(value = "/logout.do")
	public String logout(HttpSession session) {
		if(session!=null) {
			session.invalidate();
		}
		return "redirect:/test/index";
	}
	@RequestMapping("/spring/logout")
	public String springlogout(SessionStatus status) {
		System.out.println("스프링내부 객체인 SessionStatus를 이용해서 세션의 user객체를 로그아웃 처리하기");
		status.setComplete();//세션에 있는 user객체를 제거하는 작업
		return "redirect:/test/index";
	}
	
}


