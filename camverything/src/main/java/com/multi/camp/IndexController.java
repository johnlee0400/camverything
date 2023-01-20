package com.multi.camp;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.multi.camp.board.BoardDTO;
import com.multi.camp.board.BoardService;
import com.multi.camp.servicecenter.ServiceCenterDTO;
import com.multi.camp.servicecenter.ServiceCenterService;

@Controller
public class IndexController {
	BoardService service;
	ServiceCenterService servicecenter;
	
	@Autowired
	public IndexController(BoardService service, ServiceCenterService servicecenter) {
		super();
		this.service = service;
		this.servicecenter = servicecenter;
	}
	@RequestMapping("/test/index")
	public ModelAndView index() {
		ModelAndView mav = new ModelAndView("index");
		List<BoardDTO> indexboard = service.findboardindex();
		List<ServiceCenterDTO> indexnotice = servicecenter.findnoticeindex();
		mav.addObject("indexboard", indexboard);
		mav.addObject("indexnotice", indexnotice);
		return mav;
	}
}
