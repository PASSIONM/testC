package com.kte.mvc.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Handles requests for the application home page.
 */
@Controller
public class StoreController {
	

	@RequestMapping(value = "/store_insert.do", method = RequestMethod.GET)
	public String store_insert( Model model) {
		
		return "store_insert";
	}
	
}
