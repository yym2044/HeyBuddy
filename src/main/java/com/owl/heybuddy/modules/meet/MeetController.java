package com.owl.heybuddy.modules.meet;

import java.util.Locale;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MeetController {
	
	@RequestMapping(value = "/meet/meetList")
	public String meetList(Locale locale, Model model) {
		
		
		return "user/meet/meetList";
	}
	
	@RequestMapping(value = "/meet/meetStart")
	public String meetStart(Locale locale, Model model) {
		
		
		return "user/meet/meetStart";
	}
	@RequestMapping(value = "/meet/meetEnter")
	public String meetEnter(Locale locale, Model model) {
		
		
		return "user/meet/meetEnter";
	}
	@RequestMapping(value = "/meet/meetRoom")
	public String meetRoom(Locale locale, Model model) {
		
		
		return "user/meet/meetRoom";
	}
	@RequestMapping(value = "/meet/meetEnd")
	public String meetEnd(Locale locale, Model model) {
		
		
		return "user/meet/meetEnd";
	}
	
}
