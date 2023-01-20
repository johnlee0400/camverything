package com.multi.camp.servicecenter;

import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.net.MalformedURLException;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.io.UrlResource;
import org.springframework.http.HttpHeaders;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.util.UriUtils;
import org.springframework.web.util.WebUtils;

import com.multi.camp.login.LoginDTO;

@Controller
public class ServiceCenterController {
	ServiceCenterService servicecenter;
	ServiceFileUploadLogic fileuploadService;
	public ServiceCenterController() {}
	@Autowired
	public ServiceCenterController(ServiceCenterService servicecenter,ServiceFileUploadLogic fileuploadService ) {
		super();
		this.servicecenter = servicecenter;
		this.fileuploadService = fileuploadService;
	}
	@RequestMapping(value = "/service/write.do",method = RequestMethod.GET)
	public String writePage() {
		return "service/writepage";
	}
	
	
	@RequestMapping("/service/download/{id}/{service_no}/{serviceFileno}")
	public ResponseEntity<UrlResource> servicedownloadFile(@PathVariable String id,@PathVariable String service_no,@PathVariable String serviceFileno, HttpSession session) throws MalformedURLException, FileNotFoundException, UnsupportedEncodingException {
//		System.out.println(id+","+service_no+","+serviceFileno);
		//파일을 다운로드하기 위해서 디비에 저장된 파일의 정보를 가져오기 - 다운로드를 요청한 경우 요청된 파일을 response
		ServiceFileDTO selectFileInfo = servicecenter.getFile(new ServiceFileDTO(service_no,"","", serviceFileno));
		//파일명을 이용해서 다운로드할 파일을 객체로 생성하는 작업
//		UrlResource resource = new UrlResource("file:"+파일의 풀 경로);
		UrlResource resource = new UrlResource("file:"+WebUtils.getRealPath(session.getServletContext(), "/WEB-INF/serviceupload/"+selectFileInfo.getStoreFilename()));
		//파일명에 한글이 있는경우 오류가 발생하지 않도록 리턴
		String encodedFilename = UriUtils.encode(selectFileInfo.getOriginalFilename(), "UTF-8");
		String mycontenttype = "attachment; filename=\"" + encodedFilename + "\"";
//		System.out.println(selectFileInfo);
		//파일다운로드
		return ResponseEntity.ok()
				.header(HttpHeaders.CONTENT_DISPOSITION, mycontenttype)
				.body(resource);
	}
	@RequestMapping(value = "/service/write.do",method = RequestMethod.POST)
	public String write(ServiceCenterDTO service,HttpSession session) throws IllegalStateException, IOException {
		System.out.println("service=>"+service);
		//1. MultipartFile정보를 추출하기
		List<MultipartFile> files = service.getFiles();
		
		//2. 업로드될 서버의 경로 - 실제 서버의 경로를 추출하기 위해서 context의 정보를 담고 있는 ServletContext객체를 추출
		//=> ServletContext는 우리가 생성한 프로젝트가 서버에 배포되는 실제 경로와 context에 대한 정보를 담고있는 객체
		String path = WebUtils.getRealPath(session.getServletContext(), "/WEB-INF/serviceupload");
		System.out.println(path);
		
		//3. 파일업로드 서비스를 호출해서 실제 서버에 업로드 되도록 작업하기
		List<ServiceFileDTO> servicefiledtolist = fileuploadService.uploadFiles(files, path);
		int count = 1;
		//업로드된 파일의 servicefileno의 값을 셋팅 - 1부터 1,2,3,4,....첨부파일 마지막번호
		for(ServiceFileDTO servicefiledto : servicefiledtolist) {
			servicefiledto.setServiceFileno(count+"");
			count++;
		}
		System.out.println(servicefiledtolist);
		System.out.println(servicefiledtolist+"====ddddddddd======");
		//4.게시글에 대한 일반적인 정보와 첨부되는 파일의 정보를 db에 저장하기
		servicecenter.insert(service,servicefiledtolist);
		return "redirect:/service/list.do?category=공지사항";
	}
	
	
	
	
	
	@RequestMapping(value = "/manager/service/write.do",method = RequestMethod.GET)
	public String managerwritePage() {
		return "manager/service/writepage";
	}
	@RequestMapping(value = "/manager/service/write.do",method = RequestMethod.POST)
	public String managerwrite(ServiceCenterDTO service,HttpSession session) throws IllegalStateException, IOException {
		System.out.println("service=>"+service);
		//1. MultipartFile정보를 추출하기
		List<MultipartFile> files = service.getFiles();
		
		//2. 업로드될 서버의 경로 - 실제 서버의 경로를 추출하기 위해서 context의 정보를 담고 있는 ServletContext객체를 추출
		//=> ServletContext는 우리가 생성한 프로젝트가 서버에 배포되는 실제 경로와 context에 대한 정보를 담고있는 객체
		String path = WebUtils.getRealPath(session.getServletContext(), "/WEB-INF/serviceupload");
		System.out.println(path);
		
		//3. 파일업로드 서비스를 호출해서 실제 서버에 업로드 되도록 작업하기
		List<ServiceFileDTO> servicefiledtolist = fileuploadService.uploadFiles(files, path);
		int count = 1;
		//업로드된 파일의 servicefileno의 값을 셋팅 - 1부터 1,2,3,4,....첨부파일 마지막번호
		for(ServiceFileDTO servicefiledto : servicefiledtolist) {
			servicefiledto.setServiceFileno(count+"");
			count++;
		}
		System.out.println(servicefiledtolist);
		System.out.println(servicefiledtolist+"====ddddddddd======");
		//4.게시글에 대한 일반적인 정보와 첨부되는 파일의 정보를 db에 저장하기
		servicecenter.insert(service,servicefiledtolist);
		return "redirect:/service/list.do?category=all";
	}
	
	
	
	
	
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
		List<ServiceFileDTO> servicefiledtolist = servicecenter.getFileList(service_no);
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
		model.addAttribute("servicefiledtolist", servicefiledtolist);
		return view;
	}
	@RequestMapping("/service/delete.do")
	public String delete(String service_no,HttpSession session) {
		//로그인한 사용자를 찾는다.
		LoginDTO user = (LoginDTO)session.getAttribute("user");
		String view = "";
		if(user==null) {
			view = "redirect:/camp/login.do";
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













