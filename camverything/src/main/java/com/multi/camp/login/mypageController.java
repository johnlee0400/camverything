package com.multi.camp.login;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.multi.camp.product_Buy.product_BuyDTO;
import com.multi.camp.product_Buy.product_BuyService;
import com.multi.camp.reservation.ReservationDTO;
import com.multi.camp.reservation.ReservationService;

@Controller
public class mypageController {
	ReservationService res_service;
	product_BuyService pro_service;

	public mypageController(){
		
	}
	
	@Autowired
	public mypageController(ReservationService res_service, product_BuyService pro_service) {
		super();
		this.res_service = res_service;
		this.pro_service = pro_service;
	}

	@RequestMapping("/main/mypage")
	public ModelAndView mypage(HttpSession session) {
		ModelAndView mav = new ModelAndView("main/mypage_main");
		
		LoginDTO user = (LoginDTO) session.getAttribute("user");
		List <ReservationDTO> reslist = res_service.getResDataById(user.getLoginid());
		System.out.println("reslist체크"+reslist);
		mav.addObject("reslist",reslist);
		return mav;
	}
	
	@RequestMapping("/main/mypagereservation")
	public ModelAndView mypagereservation(HttpSession session) {
		ModelAndView mav = new ModelAndView("main/mypage_reservation");
		
		LoginDTO user = (LoginDTO) session.getAttribute("user");
		List <ReservationDTO> reslist = res_service.getResDataById(user.getLoginid());
		System.out.println("reslist체크"+reslist);
		mav.addObject("reslist",reslist);
		return mav;
	}
	
	@RequestMapping("/main/mypageproduct")
	public ModelAndView mypageproduct(HttpSession session) {
		ModelAndView mav = new ModelAndView("main/mypage_product");
		
		LoginDTO user = (LoginDTO) session.getAttribute("user");
		List <product_BuyDTO> BuyList = pro_service.BuyList(user.getLoginid());
		mav.addObject("BuyList", BuyList);
		return mav;
	}
	
	@RequestMapping("/main/mypagecancelpopup")
	public String mypagerescancelpopup() {
		return "reservation/mypage_reservationcancel";
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
	
	@RequestMapping("/main/myprocancel")
	@ResponseBody
	public String mypageproductcancel(int pay_no) {
		int cancel = pro_service.mypageCancel(pay_no);
		return null;
	}
}
