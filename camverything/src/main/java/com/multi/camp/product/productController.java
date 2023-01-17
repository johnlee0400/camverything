package com.multi.camp.product;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.multi.camp.camping.campingDTO;

@Controller
public class productController {
	productService service;

	@Autowired
	public productController(productService service) {
		super();
		this.service = service;
	}
	
	@RequestMapping("/product/list.do")
	public ModelAndView list(String category) {
		ModelAndView mav = new ModelAndView("product");
		List<productDTO> productList = service.findByCategory(category);
		mav.addObject("category", category);
		mav.addObject("productList", productList);
		return mav;
	}
	
	@RequestMapping("/product/read.do")
	public String read(String product_code, String state, Model model) {
		productDTO product = service.getProductInfo(product_code);
		String view = "";
		if(state.equals("READ")) {
			view = "product/product_read";
		}
		model.addAttribute("product", product);
		return view;
		
	}
	@RequestMapping("/product/search.do")
	public ModelAndView search(String search) {
		ModelAndView mav = new ModelAndView("product");
		List<productDTO> productList = service.search(search);
		mav.addObject("productList", productList);
		return mav;
	}
	
}
