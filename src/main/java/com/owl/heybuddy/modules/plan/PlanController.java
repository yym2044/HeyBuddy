package com.owl.heybuddy.modules.plan;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class PlanController {

	@RequestMapping(value = "/plan/planList")
	public String planList(Model model) {

		return "user/plan/planList";
	}

	@RequestMapping(value = "/plan/planForm")
	public String planForm(Model model) {

		return "user/plan/planForm";
	}

	@RequestMapping(value = "/plan/planView")
	public String planView(Model model) {

		return "user/plan/planView";
	}

	@RequestMapping(value = "/plan/planEdit")
	public String planEdit(Model model) {

		return "user/plan/planEdit";
	}
}
