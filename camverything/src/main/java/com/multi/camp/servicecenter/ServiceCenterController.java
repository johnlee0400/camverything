package com.multi.camp.servicecenter;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.multi.camp.board.BoardDTO;

@Controller
public class ServiceCenterController {
	ServiceCenterService service;
	public ServiceCenterController() {
		
	}
	@Autowired
	public ServiceCenterController(ServiceCenterService service) {
		this.service = service;
	}
	@RequestMapping("service.do")
	public String servicecenter() {
		return "servicecenter";
	}
	@RequestMapping("service/notice.do")
	public String service_notice() {
		return "notice";
	}
//	@RequestMapping("/service.do")
//	public ModelAndView list(String category) {
////		System.out.println("category=>"+category);
//		ModelAndView mav = new ModelAndView("servicecenter");
//		List<ServiceCenterDTO> boardlist = service.findByCategory(category);
////		System.out.println(boardlist);
//		mav.addObject("category",category);
//		mav.addObject("boardlist", boardlist);
//		return mav;
//	}
	
}
