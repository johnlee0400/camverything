package com.multi.camp.servicecenter;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.multi.camp.login.LoginDTO;

@Controller
public class ServiceCenterController {
	ServiceCenterService servicecenter;
	public ServiceCenterController() {}
	@Autowired
	public ServiceCenterController(ServiceCenterService servicecenter) {
		super();
		this.servicecenter = servicecenter;
	}
	@RequestMapping(value = "/service/write.do",method = RequestMethod.GET)
	public String writePage() {
		return "service/writepage";
	}
	//ResponseEntity는 HttpEntity의 하위객체
	//HttpEntity는 Http요청과 응답을 관리하는 객체 - 요청헤더, 바디, 응답헤더, 바디를 관리하는 객체
	//ResponseEntity는 응답의 데이터를 관리하는 객체
	//=> Http헤더, Http바디, Http상태정보...

	
	
	@RequestMapping("/service/list.do")
	public ModelAndView list(String category) {
//		System.out.println("category=>"+category);
		ModelAndView mav = new ModelAndView("service/list");
		List<ServiceCenterDTO> servicelist = servicecenter.findByCategory(category);
//		System.out.println(servicelist);
		mav.addObject("category",category);
		mav.addObject("servicelist", servicelist);
		return mav;
	}
	
	@RequestMapping("/service/read.do")
	public String read(String service_no,String state,Model model) {
//		ModelAndView mav = new ModelAndView();
		ServiceCenterDTO service = servicecenter.getserviceInfo(service_no);
//		System.out.println(servicefiledtolist);
		
		String view = "";
		if(state.equals("READ")) {
			view = "service/read";
		}else {
			view = "service/update";
		}
//		mav.setViewName(view);
//		System.out.println("model로 수정하기===========================");
//		System.out.println(service);
		model.addAttribute("service", service);
		return view;
	}
	@RequestMapping("/service/delete.do")
	public String delete(String service_no,HttpSession session) {
		//로그인한 사용자를 찾는다.
		LoginDTO user = (LoginDTO)session.getAttribute("user");
		String view = "";
		if(user==null) {
			view = "redirect:/main/login.do";
		}else {
			int result = servicecenter.delete(service_no);
			view = "redirect:/service/list.do?category=all";
		}
		return view;
	}
	//실제 업데이트기능을 처리
	@RequestMapping("/service/update.do")
	public String update(ServiceCenterDTO service) {
//		System.out.println(service+"-----------업데이트---------------------");
		int result = servicecenter.update(service);
		return "redirect:/service/list.do?category=all";
	}
	@RequestMapping("/service/search.do")
	public ModelAndView search(String tag,String data) {
		ModelAndView mav = new ModelAndView("service/list");
		List<ServiceCenterDTO> servicelist = servicecenter.search(tag, data);
//		System.out.println(servicelist);
		mav.addObject("servicelist", servicelist);
		return mav;
	}
	//ajax요청으로 실행될 메소드
	//jackson라이브러리가 List에 저장된 DTO들을 자동으로 json객체로 변환
	@RequestMapping( value = "/service/ajax/list.do", produces = "application/json;charset=utf-8")
	@ResponseBody
	public List<ServiceCenterDTO> ajaxlist(String category) {
//		System.out.println("category=>"+category);
		List<ServiceCenterDTO> servicelist = servicecenter.findByCategory(category);
//		System.out.println("ajax통신:"+servicelist);
		return servicelist;
	}
}













