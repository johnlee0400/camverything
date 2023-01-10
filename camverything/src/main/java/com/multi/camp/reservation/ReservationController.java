package com.multi.camp.reservation;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.multi.camp.reservation.ReservationDTO;
@Controller
public class ReservationController {
	ReservationService service;
	@Autowired
	public ReservationController(ReservationService service) {
		super();
		this.service = service;
	}
//	<view-controller path="/test/camp_read" view-name="test/campread"/>
	@RequestMapping("/test/camp_read")
	public String read() {
		System.out.println("상세페이지 접속함");
		//선택한 캠핑장의 상세정보
		//예약가능 날짜
		//에약가능 구역 정보를 모두 디비에서 가져오기 
		return "test/campread";
	}
	
	@RequestMapping("/res/insert.do")
	public String insert(ReservationDTO dto) {
		System.out.println("re########d");
		
		System.out.println("체크~^^^^^~~~~"+dto);
		int reservation = service.insert(dto);
		System.out.println("결과는 =>"+reservation);
		
		return "redirect:/test/index";
	}
	
//	=======예약 정보 Ajax처리부분=======
	@RequestMapping(value="/res/campdatelist",produces = "application/json;charset=utf-8")
	@ResponseBody
	public List<ReservationDTO> campdatelist(ReservationDTO dto){
		System.out.println("campdatelist들어옴");
		System.out.println(dto);
		List<ReservationDTO> campdatelist = service.getcampDate(dto);
		System.out.println("db에서select한값은:"+campdatelist);
		return campdatelist;
	}
}
