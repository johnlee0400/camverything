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

	@RequestMapping("/res/insert.do")
	public String insert(ReservationDTO dto) {
		System.out.println("체크~^^^^^~~~~"+dto);
		int reservation = service.insert(dto);
		System.out.println("결과는 =>"+reservation);
		
		return "redirect:/camp/test/index";
	}
}
