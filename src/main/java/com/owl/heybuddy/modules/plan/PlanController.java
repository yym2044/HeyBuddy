package com.owl.heybuddy.modules.plan;




import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

@Controller
public class PlanController {
	
	@Autowired
	PlanServiceImpl service;

	@RequestMapping(value = "/plan/planList")
	public String planList(@ModelAttribute("vo") PlanVo vo, Plan dto, Model model, HttpSession httpSession) throws Exception {
		
		
		List<Plan> list = service.selectList(vo);
		model.addAttribute("list", list);
		
		System.out.println("############일정 #########");
		dto.setHyplSeq((String)httpSession.getAttribute("hyplSeq"));
		dto.setHyplName((String)httpSession.getAttribute("hyplName"));
		dto.setHyplDate((String)httpSession.getAttribute("hyplDate"));
		dto.setHyplDesc((String)httpSession.getAttribute("hyplDesc"));
		dto.setHyplMemberName((String)httpSession.getAttribute("hyplMemberName"));
		
		if(vo.getHyspSeq() != null) {
			httpSession.setAttribute("hyspSeq", vo.getHyspSeq());
		}
		
//		dto.setHysmAcceptedNy((String)httpSession.getAttribute("hysmAcceptedNy"));
		vo.setHymmSeq((String) httpSession.getAttribute("sessSeq"));
		vo.setHymmName((String) httpSession.getAttribute("sessName"));
		vo.setHyspSeq((String) httpSession.getAttribute("hyspSeq"));
		vo.setHyspName((String) httpSession.getAttribute("hyspName"));
		
		System.out.println("############회원시퀀, 이름, 스페이스시퀀, 스페이스이름 #########");
		System.out.println("vo.getHymmSeq :" + vo.getHymmSeq());
		System.out.println("vo.getHymmName :" + vo.getHymmName());
		System.out.println("vo.getHyspSeq :" + vo.getHyspSeq());
		System.out.println("vo.getHyspName :" + vo.getHyspName());
		
		 List<Plan> selectListMember = service.selectListMember(vo); 
			
		 model.addAttribute("selectListMember", selectListMember); 
	
		 
		 
		return "user/plan/planList";
	}
	
	// 일정에는 폼이 필요없어 보이나 마감할 때 필요 없으면 제거 
	@RequestMapping(value = "/plan/planForm")
	public String planForm() throws Exception {

		return "user/plan/planForm";
	}

	@RequestMapping(value = "/plan/planInst")
	public String memberInst(Model model, Plan dto, PlanVo vo, RedirectAttributes redirectAttributes, HttpSession httpSession) throws Exception {
		
//		vo.setHyspSeq((String) httpSession.getAttribute("hyspSeq"));
//		vo.setHyspName((String) httpSession.getAttribute("hyspName"));
		
		
		System.out.println("dto.gethyplName(): " + dto.getHyplName());
		System.out.println("dto.gethyplDefaultyNy(): " + dto.getHyplDefaultNy());
		System.out.println("dto.gethyplDate(): " + dto.getHyplDate());
		System.out.println("dto.gethyplDesc(): " + dto.getHyplDesc());
		System.out.println("dto.gethyplMemberName(): " + dto.getHyplMemberName());
		System.out.println("vo.getHyspSeq(): " + vo.getHyspSeq());
		
		dto.setHyspSeq((String)httpSession.getAttribute("hyspSeq"));
		
		
		service.insert(dto);
		 /* int result = service.insert(dto); */
		 
		 /* System.out.println("result: " + result); */

		/* redirectAttributes.addFlashAttribute("dto", dto); */

		vo.setHyplSeq(dto.getHyplSeq());
		
		redirectAttributes.addFlashAttribute("vo", vo);
		
		return "redirect:/plan/planView";
	}
	
	@RequestMapping(value = "/plan/planView")
	public String planView(@ModelAttribute("vo") PlanVo vo, Plan dto, Model model,HttpSession httpSession) throws Exception {

//		Plan rt = service.selectOne(vo);

		// 가지고 온 값을 jsp로 넘겨준다
		/* Member item = service.selectGender(vo); */

//		model.addAttribute("rt", rt);
		/* model.addAttribute("item", item); */
		
		vo.setHymmSeq((String) httpSession.getAttribute("sessSeq"));
		vo.setHymmName((String) httpSession.getAttribute("sessName"));
		vo.setHyspSeq((String) httpSession.getAttribute("hyspSeq"));
		vo.setHyspName((String) httpSession.getAttribute("hyspName"));
		
		return "user/plan/planView";
	}

	@RequestMapping(value = "/plan/planEdit")
	public String planEdit() throws Exception {

		return "user/plan/planEdit";
	}
	@RequestMapping(value = "/plan/test")
	public String test(@ModelAttribute("vo") PlanVo vo, Plan dto, Model model) throws Exception {
		

//		 List<Plan> selectListMember = service.selectListMember(); 
//			
//		 model.addAttribute("selectListMember", selectListMember); 

		
		
		return "user/plan/test";
	}
	
	@ResponseBody
	@RequestMapping(value = "/plan/planListAjax")
	public List<Plan> planListAjax(PlanVo vo) throws Exception {
		
		List<Plan> planList = service.selectList(vo);
		
		return planList;
		
	}
	
	
}
