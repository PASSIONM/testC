package com.kte.mvc.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


@Controller
public class testController {
	
	@RequestMapping(value = "/test.do", method = RequestMethod.POST)
	//public String store_insert(@RequestParam(value="imgs", required=true) List<String> imgs) {
	public String store_insert(HttpServletRequest request, HttpServletResponse response) {
			
		String[] imgs = request.getParameterValues("imgs[]");
		
		System.out.println(imgs.length);
		
		for(int i=0;i<imgs.length;i++) {
			System.out.println(imgs[i]);	
		}
		return "redirect:store_insert.do";
	}
}
