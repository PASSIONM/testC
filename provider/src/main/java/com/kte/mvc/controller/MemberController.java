package com.kte.mvc.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Handles requests for the application home page.
 */
@Controller
public class MemberController {
	

	@RequestMapping(value = "/provider_join.do", method = RequestMethod.GET)
	public String provider_join( Model model) {
		
		return "p_join";
	}
	
}
