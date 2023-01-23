package com.multi.camp.login;


import javax.servlet.http.HttpServletRequest; 
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.servlet.ModelAndView;

import com.multi.camp.login.LoginDTO;
import com.multi.camp.register.MemberService;


@Controller
@SessionAttributes("user")
public class LoginController {
	
	LoginService service;
	MemberService service2;

	@Autowired
	public LoginController(LoginService service, MemberService service2) {
		super();
		this.service = service;
		this.service2 = service2;
		
	}

	@RequestMapping(value = "/loginpage", method = RequestMethod.GET)
	public String loginpage() {
		return "login";
	}
	@RequestMapping(value = "/login.do" , method = RequestMethod.POST)
	public ModelAndView login(LoginDTO loginuserInfo, HttpServletRequest request) {
		ModelAndView mav = new ModelAndView();
		String viewName = "";
		System.out.println(loginuserInfo+"=======로그인유저 정보");
		//System.out.println("============================== 에러");
		LoginDTO user = service.login(loginuserInfo);
		HttpSession session = request.getSession();
		if (user !=null) {
//			System.out.println("로그인성공");
			session.setAttribute("user", user);
//			viewName =user.getId();
			viewName = "index";
//			viewName = user.getMenupath();
		}else {
			///JOptionPane.showMessageDialog(null, "아이디와 비밀번호를 확인하세요", "로그인실패", JOptionPane.ERROR_MESSAGE);
			viewName ="login";
		}
		mav.setViewName(viewName);
		
		//LoginDTO member;
		System.out.println("Member=>"+loginuserInfo);
//		service.insert(member);
//		return "main/login";
		System.out.println("getid=>"+loginuserInfo.getTel());
		if(loginuserInfo.getTel()!=null) {
			
			System.out.println("===================");
			int result = service2.insert(loginuserInfo);
			if(result==1) {
				
				System.out.println("성공=========");
				
				viewName = "index";
			}else {
				System.out.println("실패=========");
				viewName ="login";
			}
			mav.setViewName(viewName);
			
		}
		
		return mav;
		//회원가입
	
		
	}


	@RequestMapping("/main/login")
	public String springlogin(LoginDTO loginUserInfo,Model model) {
		
		
		System.out.println("스프링이 제공하는 @SessionAttributes를 이용해서 세션처리하기");
		LoginDTO user = service.login(loginUserInfo);
		String viewName = "";
		if (user != null) {
			model.addAttribute("user",user);
			viewName = "index";
		} else { // 로그인실패
			//JOptionPane.showMessageDialog(null, "아이디와 비밀번호를 확인하세요", "로그인실패", JOptionPane.ERROR_MESSAGE);
			viewName ="login";
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
	
	//정보수정하기
		@RequestMapping(value="/main/mypage_update.do")
		public String mypage_update(LoginDTO member) {
			System.out.println("회원정보수정=>"+member);
			int result = service2.update(member);
			if(result==1) {
				return "index";
			}
			return "redirect:/main/mypage";
		}
		
		@RequestMapping("/main/mypage_delete.do")
		public String mypage_delate(String id,HttpSession session,SessionStatus status) {
			LoginDTO user = (LoginDTO)session.getAttribute("user");
			String view="";
			if(user==null) {
				view = "redirect:/main/mypage_main";
			}else {
				int result = service2.delete(id);
				if(result==1) {
					System.out.println("회원탈퇴성공!!");
				}
				System.out.println("delete=------------");
				user = null;
				session.invalidate();
				status.setComplete();
				view = "redirect:/test/index";
			}
			return view;
		}
}