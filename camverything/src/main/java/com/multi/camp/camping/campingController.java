package com.multi.camp.camping;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class campingController {
	campingService service;
	@Autowired
	public campingController(campingService service) {
		super();
		this.service = service;
	}
	@RequestMapping("/camping/list.do")
	public ModelAndView list(String doNm) {
		ModelAndView mav = new ModelAndView("campingList");
		List<campingDTO> campingList = service.findByCategory(doNm);
		mav.addObject("doNm", doNm);
		mav.addObject("campingList", campingList);
		return mav;
	}
	
	
	
	@RequestMapping("/camping/search.do")
	public ModelAndView search2(String search) {
		ModelAndView mav = new ModelAndView("campingList");
		List<campingDTO> campingList = service.search(search);
		mav.addObject("campingList", campingList);
		return mav;
	}
	
	

}
