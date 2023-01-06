package com.multi.camp.reservation;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
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
		System.out.println("rea~~~~~~d");
		return "test/campread";
	}
	
	@RequestMapping("/test/datepicker")
	public String read2() {
		System.out.println("datepickertest");
		return "test/datepicker";
	}
	
	@RequestMapping("/res/insert.do")
	public String insert(ReservationDTO dto) {
		System.out.println("re########d");
		
		System.out.println("체크~^^^^^~~~~"+dto);
		int reservation = service.insert(dto);
		System.out.println("결과는 =>"+reservation);
		
		return "redirect:/test/index";
	}
}
