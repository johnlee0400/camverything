package com.multi.camp.manager;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ManagerController {
	GoCampingService service;

	@Autowired
	public ManagerController(GoCampingService service) {
		super();
		this.service = service;
	}

	@RequestMapping("/manager")
	public String managerPage() {
		
		return "manager/managerPage";
	}
	
	//GoCamping공공 데이터를 가공해서 insert해줌
	@RequestMapping("/gocamp/insert1")
	public String GoCampingDataInsert1() {
		
		System.out.println("##########고캠핑insert들어옴##########");
		
		int insertresult = service.insertGoCamping1();
		if(insertresult == 1) {
			System.out.println("고캠핑insert 성공~!~!~!");
		}else {
			System.out.println("고캠핑insert 성공하였습니다~!");
		}
		
		return "manager/managerPage";
	}
	@RequestMapping("/gocamp/insert2")
	public String GoCampingDataInsert2() {
		
		System.out.println("##########고캠핑insert들어옴##########");
		
		int insertresult = service.insertGoCamping2();
		if(insertresult == 1) {
			System.out.println("고캠핑insert 성공~!~!~!");
		}else {
			System.out.println("고캠핑insert 성공하였습니다~!");
		}
		
		return "manager/managerPage";
	}
	@RequestMapping("/gocamp/insert3")
	public String GoCampingDataInsert3() {
		
		System.out.println("##########고캠핑insert들어옴##########");
		
		int insertresult = service.insertGoCamping3();
		if(insertresult == 1) {
			System.out.println("고캠핑insert 성공~!~!~!");
		}else {
			System.out.println("고캠핑insert 성공하였습니다~!");
		}
		
		return "manager/managerPage";
	}
	@RequestMapping("/gocamp/insert4")
	public String GoCampingDataInsert4() {
		
		System.out.println("##########고캠핑insert들어옴##########");
		
		int insertresult = service.insertGoCamping4();
		if(insertresult == 1) {
			System.out.println("고캠핑insert 성공~!~!~!");
		}else {
			System.out.println("고캠핑insert 성공하였습니다~!");
		}
		
		return "manager/managerPage";
	}
}
