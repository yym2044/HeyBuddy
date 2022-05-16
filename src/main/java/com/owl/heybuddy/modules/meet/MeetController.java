package com.owl.heybuddy.modules.meet;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

@Controller
public class MeetController {
	
	@Autowired
	MeetServiceImpl service;
	
	@RequestMapping(value = "/meet/index")
	public String index() {
		
		
		return "user/meet/index";
	}
	
	@RequestMapping(value = "/meet/meetList")
	public String meetList(Model model, MeetVo vo) throws Exception {
		
		vo.setHyspSeq("1");
		
		model.addAttribute("list", service.selectListRoom(vo));
		
		return "user/meet/meetList";
	}
	
	@RequestMapping(value = "/meet/meetStart")
	public String meetStart() {
		
		
		return "user/meet/meetStart";
	}
	
	@RequestMapping(value = "/meet/meetInst")
	public String meetInst(Meet dto, RedirectAttributes redirectAttributes) throws Exception {
		
		service.insertRoom(dto);
		
		return "redirect:/meet/meetRoom?" + dto.gethymrRoomId();
	}
	
	
	@RequestMapping(value = "/meet/meetEnter")
	public String meetEnter(Model model, @ModelAttribute("vo") MeetVo vo) throws Exception {
		
		vo.setHyspSeq("1");
		
		model.addAttribute("rt", service.selectOneRoom(vo));
		
		return "user/meet/meetEnter";
	}
	@RequestMapping(value = "/meet/meetRoom")
	public String meetRoom(Model model, @ModelAttribute("vo") MeetVo vo, Meet dto) throws Exception {
		
		vo.setHyspSeq("1");
		
		model.addAttribute("rt", service.selectOneRoom(vo));
		
		return "user/meet/meetRoom";
	}
	@RequestMapping(value = "/meet/meetEnd")
	public String meetEnd() {
		
		
		return "user/meet/meetEnd";
	}
	
}
