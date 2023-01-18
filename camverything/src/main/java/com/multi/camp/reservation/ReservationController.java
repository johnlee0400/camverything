package com.multi.camp.reservation;

import java.io.BufferedReader;
import java.io.DataOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.io.UnsupportedEncodingException;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.net.URLEncoder;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.multi.camp.login.LoginDTO;
import com.multi.camp.manager.GoCampingDTO;
@Controller
public class ReservationController {
	ReservationService service;
	@Autowired
	public ReservationController(ReservationService service) {
		super();
		this.service = service;
	}
//	<view-controller path="/test/camp_read" view-name="test/campread"/>
//	@RequestMapping("/res/camp_read")
//	public String read() {
//		System.out.println("상세페이지 접속함");
//		//선택한 캠핑장의 상세정보
//		//예약가능 날짜
//		//에약가능 구역 정보를 모두 디비에서 가져오기 
//		return "res/campread";
//	}
	
	@RequestMapping("/res/success") //결제성공팝업
	public String reservationsuccess() {
		return "reservation/reservationsuccess";
	}
	@RequestMapping("/res/fail")
	public String reservationfail() {
		return "reservation/reservationfail";
	}
	
	@RequestMapping("/res/insert.do")
	public String insert(ReservationDTO dto,String facltNm,HttpSession session) throws UnsupportedEncodingException {
		System.out.println("=====res/insert.do쪽 dto=======");
		System.out.println(dto);
		System.out.println("facltNm1=>"+facltNm);
		int reservation = service.insert(dto);
		System.out.println("결과는 =>"+reservation);
		//addObject("변수명","값"); => ?key=value값으로 넘겨줌 addAttribute와 다르게
//		HashMap<String,String> map = new HashMap<String, String>();
//		map.put("check", "1");
//		map.put("facltNm", facltNm);
		
		if(reservation == 1) {
			return "redirect:/res/camp_read?check=1&facltNm="+URLEncoder.encode(facltNm,"UTF-8"); //insert되면 check값 1 return
		}else {
			return "redirect:/res/camp_read?check=0&facltNm="+URLEncoder.encode(facltNm,"UTF-8"); 
		}
		//"redirect:/res/camp_read?check=1&facltNm="+facltNm
	}
	
	@RequestMapping("/res/camp_read")
	public ModelAndView gocampingdatapage(String facltNm,String check,HttpSession session) {
		System.out.println("캠핑장 이름 encode 확인=>"+facltNm);
		System.out.println("check확인 => "+check);
		ModelAndView mav = new ModelAndView("res/campread");
		GoCampingDTO dto = service.getGoCampingDataByfacltNm(facltNm);
		//System.out.println("gocampingdata확인=>"+dto);
	   // mav.addObject("dto",dto); 
	    mav.addObject("check",check);
	    session.setAttribute("dto", dto);
		System.out.println("세션에 저장한 dto값=>"+session.getAttribute("dto"));
		return mav;
	}
	
//	=======예약 정보 Ajax처리부분=======
	//캠핑날짜를 기반으로 캠핑장정보, 숙박일수 등을 가져와서 뿌려줌
	@RequestMapping(value="/res/campdatelist",produces = "application/json;charset=utf-8")
	@ResponseBody
	public List<ReservationDTO> campdatelist(ReservationDTO dto){
		//System.out.println("campdatelist들어옴");
		//System.out.println(dto);
		List<ReservationDTO> campdatelist = service.getcampDate(dto);
		//System.out.println("db에서select한값은:"+campdatelist);
		return campdatelist;
	}
	
	//카카오페이 결제 취소할시 db에 들어있는 데이터 지움
	@RequestMapping("/res/cancel")
	@ResponseBody
	public List<ReservationDTO> cancelreservation(HttpSession session){
		System.out.println("cancelreserv들어옴");
		LoginDTO user = (LoginDTO) session.getAttribute("user"); //세션 유저정보꺼내서 저장
		System.out.println("id체크"+user.getId());
		int cancel = service.cancel(user.getId());
		System.out.println("예약취소결과는=>"+cancel);
		return null;
	}
	//카카오 결제페이지갔을때 facltNm(캠핑장명)은 이미 세션으로 처리된상태여서 
	//다시 위쪽에 db에서 select하는 곳으로 갈필요가 없음 지금또가면 오류남
	//그래서 여기에 새로 매핑해서 db처리안하고 바로 이전 뷰로 가게 만듬.
	//갈때 kakao redirect url에 붙어있는 파라미터값들도 전달해줌
	@RequestMapping("/res/kakaoredirect")
	public String test(String reservation,Model model) {
		
		model.addAttribute("reservation",reservation );
		
		return "res/campread";
	}
	
	@RequestMapping("/res/kakaopay")   //ajax로 가져와서 캠브리띵캠핑예약에 추가하기
	@ResponseBody
	public String kakaopay(String facltNm) {
		System.out.println("facltNm2=>"+facltNm);
		try {
			URL url = new URL("https://kapi.kakao.com/v1/payment/ready");
			HttpURLConnection conn = (HttpURLConnection) url.openConnection();//서버연결
			conn.setRequestMethod("POST");//시키는대로 기본정보들
			conn.setRequestProperty("Authorization", "KakaoAK 6052a5e62e6fb490a1f9e4b17ab7f7b1");
			conn.setRequestProperty("Content-type", "application/x-www-form-urlencoded;charset=utf-8");
			conn.setDoOutput(true);
			String parameter = "cid=TC0ONETIME&partner_order_id=partner_order_id&partner_user_id=partner_user_id&item_name=초코파이&quantity=1"
					+ "&total_amount=2200&vat_amount=200&tax_free_amount=0&approval_url=http://localhost:8088/camp/res/kakaoredirect?reservation=success&fail_url=http://localhost:8088/camp/res/camp_read&cancel_url=http://localhost:8088/camp/res/kakaoredirect?reservation=cancel";
			OutputStream out = conn.getOutputStream();//주는애
			DataOutputStream  dataout = new DataOutputStream(out);//데이터주는애
			dataout.writeBytes(parameter);//바이트를 사용함 문자열
			dataout.close();//dataout.flush() -> close()에포함됨 -> 자기가 가지고있는걸 비우는데 서버로태워보냄 
			
			int result = conn.getResponseCode();//결과연결이 잘됐나 안됐나 결과코드로 확인
			System.out.println("응답코드는 =>" + result);
			
			InputStream in; //받는애
			if(result == 200) {//200은 정상적인 연결뜻함
				in = conn.getInputStream();//결과받음
			}else {
				in = conn.getErrorStream();//에러받음
			}
			InputStreamReader read = new InputStreamReader(in); //받는애는 활용을 못해서 얘는 읽을줄 아는애
			BufferedReader buff= new BufferedReader(read); //아까 byte형식을 사용해서 형변환해야함
			//System.out.println("응답정보=>"+buff.readLine());
			
			return buff.readLine(); //우리가 이제 받는다
			
		} catch (MalformedURLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return "{\"result\":\"NO\"}"; //예외가 발생해 try문 밖으로 빠져나온 경우 서버작업이 실패했다는의미
		
	}
	
}
