package com.multi.camp.product;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class productController {
	productService service;

	@Autowired
	public productController(productService service) {
		super();
		this.service = service;
	}
	
	@RequestMapping("/product/list.do")
	public ModelAndView list() {
		ModelAndView mav = new ModelAndView("productList");
		List<productDTO> productList = service.productList();
		mav.addObject("productList", productList);
		return mav;
	}
	
	@RequestMapping("/product/read.do")
	public String read(String product_code, String state, Model model) {
		productDTO product = service.getProductInfo(product_code);
		String view = "";
		if(state.equals("READ")) {
			view = "product_read";
		}
		model.addAttribute("product", product);
		return view;
	}
	
}
