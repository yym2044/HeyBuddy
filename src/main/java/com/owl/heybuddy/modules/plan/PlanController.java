package com.owl.heybuddy.modules.plan;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class PlanController {
	
	@Autowired
	PlanServiceImpl service;

	@RequestMapping(value = "/plan/planList")
	public String planList() {

		return "user/plan/planList";
	}

	@RequestMapping(value = "/plan/planForm")
	public String planForm() {

		return "user/plan/planForm";
	}

	@RequestMapping(value = "/plan/planView")
	public String planView() {

		return "user/plan/planView";
	}

	@RequestMapping(value = "/plan/planEdit")
	public String planEdit() {

		return "user/plan/planEdit";
	}
}
