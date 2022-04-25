package com.owl.heybuddy.modules.meet;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

@Controller
public class MeetController {
	
	@Autowired
	MeetServiceImpl service;

}
