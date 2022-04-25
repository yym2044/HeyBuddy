package com.owl.heybuddy.modules.plan;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

@Controller
public class PlanController {
	
	@Autowired
	PlanServiceImpl service;

}
