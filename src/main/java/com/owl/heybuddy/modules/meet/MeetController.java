package com.owl.heybuddy.modules.meet;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MeetController {
	
	@Autowired
	MeetServiceImpl service;
	
	@RequestMapping(value = "/meet/meetList")
	public String meetList() {
		
		
		return "user/meet/meetList";
	}
	
	@RequestMapping(value = "/meet/meetStart")
	public String meetStart() {
		
		
		return "user/meet/meetStart";
	}
	@RequestMapping(value = "/meet/meetEnter")
	public String meetEnter() {
		
		
		return "user/meet/meetEnter";
	}
	@RequestMapping(value = "/meet/meetRoom")
	public String meetRoom() {
		
		
		return "user/meet/meetRoom";
	}
	@RequestMapping(value = "/meet/meetEnd")
	public String meetEnd() {
		
		
		return "user/meet/meetEnd";
	}
	
}
