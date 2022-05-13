package com.owl.heybuddy.modules.plan;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.owl.heybuddy.modules.plan.Plan;
import com.owl.heybuddy.modules.plan.PlanVo;

@Controller
public class PlanController {
	
	@Autowired
	PlanServiceImpl service;

	@RequestMapping(value = "/plan/planList")
	public String planList() throws Exception {
		
		return "user/plan/planList";
	}
	
	@RequestMapping(value = "/plan/planForm")
	public String planForm() throws Exception {

		return "user/plan/planForm";
	}

	@RequestMapping(value = "/plan/planInst")
	public String memberInst(Model model, Plan dto, PlanVo vo, RedirectAttributes redirectAttributes) throws Exception {
		
		System.out.println("dto.gethyplSeq(): " + dto.getHyplSeq());
		System.out.println("dto.gethyplName(): " + dto.getHyplName());
		System.out.println("dto.gethyplDefaultyNy(): " + dto.getHyplDefaultNy());
		System.out.println("dto.gethyplDate(): " + dto.getHyplDate());
		System.out.println("dto.gethyplDesc(): " + dto.getHyplDesc());
		System.out.println("dto.gethyplMemberName(): " + dto.getHyplMemberName());
		
		int result = service.insert(dto);

		System.out.println("result: " + result);

		vo.setHyplSeq(dto.getHyplSeq());
		/* redirectAttributes.addFlashAttribute("dto", dto); */

		redirectAttributes.addFlashAttribute("vo", vo);
		
		return "redirect:user/plan/planList";
	}
	
	@RequestMapping(value = "/plan/planView")
	public String planView(@ModelAttribute("vo") PlanVo vo, Plan dto, Model model) throws Exception {

		Plan rt = service.selectOne(vo);

		// 가지고 온 값을 jsp로 넘겨준다
		/* Member item = service.selectGender(vo); */

		model.addAttribute("rt", rt);
		/* model.addAttribute("item", item); */
		
		return "user/plan/planList";
	}

	@RequestMapping(value = "/plan/planEdit")
	public String planEdit() throws Exception {

		return "user/plan/planEdit";
	}
}
