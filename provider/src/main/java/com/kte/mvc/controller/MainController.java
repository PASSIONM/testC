package com.kte.mvc.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Handles requests for the application home page.
 */
@Controller
public class MainController {
	

	@RequestMapping(value = "/main.do", method = RequestMethod.GET)
	public String home( Model model) {
		
		return "provider_join";
	}
	
}