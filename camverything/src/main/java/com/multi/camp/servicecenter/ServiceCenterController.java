package com.multi.camp.servicecenter;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ServiceCenterController {
	
	@RequestMapping("service.do")
	public String servicecenter() {
		return "servicecenter";
	}
	
	@RequestMapping("servicecenter/product_qna.do")
	public String productqna() {
		return "servicecenter/product_qna";
	}
	
	@RequestMapping("servicecenter/product_qna_write.do")
	public String writeproductqna() {
		return "servicecenter/product_qna_write";
	}
	
	
	@RequestMapping("servicecenter/reservation_qna.do")
	public String reservationqna() {
		return "servicecenter/reservation_qna";
	}
	
	@RequestMapping("servicecenter/reservation_qna_write.do")
	public String writereservationqna() {
		return "servicecenter/reservation_qna_write";
	}
	
}