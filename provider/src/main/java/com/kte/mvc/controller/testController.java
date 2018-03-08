package com.kte.mvc.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class testController {
	
	@RequestMapping(value = "/test.do", method = RequestMethod.POST)
	public String store_insert(HttpServletRequest request, HttpServletResponse response) {
		/*
		String[] tx = request.getParameterValues("aaa[]");
		String[] tx1 = request.getParameterValues("bbb[]");*/
		String[] imgs = request.getParameterValues("imgs[]");
		
		
		/*System.out.println("a길이"+tx.length);
		for(int i=0;i<tx.length;i++) {
			System.out.println(tx[i]);	
		}
		System.out.println("b길이"+tx1.length);
		for(int i=0;i<tx1.length;i++) {
			System.out.println(tx1[i]);	
		}*/
		System.out.println("i길이"+imgs.length);
		for(int i=0;i<imgs.length;i++) {
			System.out.println(imgs[i]);	
		}

		
		return "redirect:store_insert.do";
	}
}
