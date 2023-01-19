package com.multi.camp.product_Buy;

import java.io.BufferedReader;
import java.io.DataOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class product_BuyController {
	product_BuyService service;
	@Autowired
	public product_BuyController(product_BuyService service) {
		super();
		this.service = service;
	}
	@RequestMapping("product/success")
	public String buySuccess() {
		return "product/product_success";
	}
	@RequestMapping("product/fail")
	public String buyfail() {
		return "product/product_fail";
	}
	
	@RequestMapping("/product_Buy/insert.do")
	public String insert(product_BuyDTO dto, HttpSession session) {
		int product_Buy = service.insert(dto);
		//addObject("변수명","값"); => ?key=value값으로 넘겨줌 addAttribute와 다르게
		if(product_Buy == 1) {
			return "redirect:/product/buyRead?check=1"; //insert되면 check값 1 return
		}else {
			return "redirect:/product/buyRead?check=0";
		}
	}
	
	@RequestMapping("/product/buyRead")
	public ModelAndView read(HttpSession session, String check) {
		ModelAndView mav = new ModelAndView("product/product_read");
		mav.addObject("check", check);
		return mav;
	}
	@RequestMapping("/product/cancel")
	public List<product_BuyDTO> cancelBuy(){
		int cancel = service.cancel();
		return null;
	}
	@RequestMapping("/product_Buy/kakaopay")
	@ResponseBody
	public String kakaopay() {
		try {
			URL url = new URL("https://kapi.kakao.com/v1/payment/ready");
			HttpURLConnection conn = (HttpURLConnection) url.openConnection();
			conn.setRequestMethod("POST");
			conn.setRequestProperty("Authorization", "KakaoAK 2e1e288ef45badae9884ed41e10a1603");
			conn.setRequestProperty("Content-type", "application/x-www-form-urlencoded;charset=utf-8");
			conn.setDoOutput(true);
			String parameter = "cid=TC0ONETIME&partner_order_id=partner_order_id&partner_user_id=partner_user_id&item_name=초코파이&quantity=1"
					+ "&total_amount=2200&vat_amount=200&tax_free_amount=0&approval_url=http://localhost:8088/camp/product/buyRead?reservation=success&fail_url=http://localhost:8088/camp/proaduct/buyRead&cancel_url=http://localhost:8088/camp/product/buyRead?reservation=cancel";
			OutputStream out = conn.getOutputStream();
			DataOutputStream  dataout = new DataOutputStream(out);
			dataout.writeBytes(parameter);
			dataout.close();
			
			int result = conn.getResponseCode();
			InputStream in; //받는애
			if(result == 200) {//200은 정상적인 연결뜻함
				in = conn.getInputStream();//결과받음
			}else {
				in = conn.getErrorStream();//에러받음
			}
			InputStreamReader read = new InputStreamReader(in); 
			BufferedReader buff= new BufferedReader(read);
			return buff.readLine();
		} catch (MalformedURLException e) {
			e.printStackTrace();
		}catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return "{\"result\":\"NO\"}";
	}
}
