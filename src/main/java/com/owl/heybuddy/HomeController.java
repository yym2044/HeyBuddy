package com.owl.heybuddy;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class HomeController {
	
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home() {
		
		return "redirect:/login/userLogin";
	}
	
	@RequestMapping(value = "/test")
	public String test() {
		
		return "user/test";
	}
	
}
