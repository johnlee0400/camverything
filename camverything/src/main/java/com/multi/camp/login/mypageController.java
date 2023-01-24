package com.multi.camp.login;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.servlet.ModelAndView;

import com.multi.camp.product_Buy.product_BuyDTO;
import com.multi.camp.product_Buy.product_BuyService;
import com.multi.camp.register.MemberService;
import com.multi.camp.reservation.ReservationDTO;
import com.multi.camp.reservation.ReservationService;

@Controller
public class mypageController {
	ReservationService res_service;
	product_BuyService pro_service;
	MemberService service2;
	LoginService service;
	
	public mypageController(){
		
	}
	
	@Autowired
	public mypageController(ReservationService res_service, product_BuyService pro_service,MemberService service2,LoginService service) {
		super();
		this.res_service = res_service;
		this.pro_service = pro_service;
		this.service2 = service2;
		this.service = service;
	}
	
	@RequestMapping(value = "/main/mypage_update")
	public String mypage_update() {
		return "main/mypage_update";
	}
	
	@RequestMapping(value = "/main/mypage")
	public String mypage() {
		return "main/mypage_main";
	}
	
	//정보수정하기
	@RequestMapping(value="/main/mypage_update.do")
	public String mypage_update(LoginDTO member,HttpSession session) {
		System.out.println("회원정보수정=>"+member);
		int result = service2.update(member);
		System.out.println("마이페이지 TT=> " +member);
		LoginDTO user = service.selectUpdatedInfo(member);
		System.out.println("마이페이지 TT2222=> " +user);
		session.setAttribute("user", user);
		
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
	
	@RequestMapping("/main/mypagereservation")
	public ModelAndView mypagereservation(HttpSession session) {
		ModelAndView mav = new ModelAndView("main/mypage_reservation");
		
		LoginDTO user = (LoginDTO) session.getAttribute("user");
		List <ReservationDTO> reslist = res_service.getResDataById(user.getId());
		System.out.println("reslist체크"+reslist);
		mav.addObject("reslist",reslist);
		return mav;
	}
	
	@RequestMapping("/main/mypageproduct")
	public ModelAndView mypageproduct(HttpSession session) {
		ModelAndView mav = new ModelAndView("main/mypage_product");
		
		LoginDTO user = (LoginDTO) session.getAttribute("user");
		List <product_BuyDTO> BuyList = pro_service.BuyList(user.getId());
		mav.addObject("BuyList", BuyList);
		return mav;
	}
	
	@RequestMapping("/main/mypagecancelpopup")
	public String mypagerescancelpopup() {
		return "reservation/mypage_reservationcancel";
	}
	@RequestMapping("/main/mypageinfodeletepopup")
	public String mypageinfodeletepopup() {
		return "reservation/mypageinfo_delete";
	}
	@RequestMapping("/main/mypageinfoupdatepopup")
	public String mypageinfoupdatepopup() {
		return "reservation/mypageinfo_update";
	}
	
	@RequestMapping("/main/mypagecancel")
	@ResponseBody
	public String mypagecancel(int res_no) {
		System.out.println("넘어온 res_no=>"+res_no);
		int cancel = res_service.mypageCancel(res_no);
		System.out.println("마이페이지예약취소결과는=>"+cancel);
		return null;
	}
	
	@RequestMapping("/main/mypageBuycancelpopup")
	public String mypageproductBuycancel() {
		return "product/mypage_productBuycancel";
	}
	//주석
	@RequestMapping("/main/myprocancel")
	@ResponseBody
	public String mypageproductcancel(int pay_no) {
		int cancel = pro_service.mypageCancel(pay_no);
		return null;
	}
}