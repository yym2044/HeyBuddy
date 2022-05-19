package com.owl.heybuddy.modules.meet;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.messaging.handler.annotation.MessageMapping;
import org.springframework.messaging.simp.SimpMessagingTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

@Controller
public class MeetController {
	
	@Autowired
	MeetServiceImpl service;
	
	private final SimpMessagingTemplate template;
	
	public MeetController(final SimpMessagingTemplate template) {
		this.template = template;
	}
	
	@MessageMapping("/joinRoom")
	public void joinRoom(Message message, Meet dto) throws Exception {
		
		System.out.println(message.getRoomId() + ", " + message.getWriter() + ", " + message.getMsg());
		
		template.convertAndSend("/sub/message/notice/" + message.getRoomId(), message.getMsg());
	}
	
	@MessageMapping("/chat")
	public void chat(Message message) throws Exception {
		template.convertAndSend("/sub/message/chat/" + message.getRoomId(), message);
	}
	
	
	
	@MessageMapping("/meetRoomList")
	public void meetRoomList(String msg) throws Exception {
		
		
		template.convertAndSend("/sub/meetRoomList", "roger that");
	}
	
	
	
	@RequestMapping(value = "/meet/index")
	public String index() {
		
		
		return "user/meet/index";
	}
	
	@RequestMapping(value = "/meet/meetList")
	public String meetList(Model model, MeetVo vo, HttpSession httpSession) throws Exception {
		
		vo.setHyspSeq((String)httpSession.getAttribute("hyspSeq"));
		
		model.addAttribute("roomList", service.selectListRoom(vo));
		model.addAttribute("memberList", service.selectListRoomMember());
		
		return "user/meet/meetList";
	}
	
	@RequestMapping(value = "/meet/meetStart")
	public String meetStart() {
		
		
		return "user/meet/meetStart";
	}
	
	@RequestMapping(value = "/meet/meetInst")
	public String meetInst(Meet dto, RedirectAttributes redirectAttributes) throws Exception {
		
		service.insertRoom(dto);
		
		return "redirect:/meet/meetRoom?" + dto.getHymrRoomId();
	}
	
	
	@RequestMapping(value = "/meet/meetEnter")
	public String meetEnter(Model model, @ModelAttribute("vo") MeetVo vo, HttpSession httpSession) throws Exception {
		
		vo.setHyspSeq((String)httpSession.getAttribute("hyspSeq"));
		
		model.addAttribute("rt", service.selectOneRoom(vo));
		
		return "user/meet/meetEnter";
	}
	@RequestMapping(value = "/meet/meetRoom")
	public String meetRoom(Model model, @ModelAttribute("vo") MeetVo vo, Meet dto, HttpSession httpSession) throws Exception {
		
		vo.setHyspSeq((String)httpSession.getAttribute("hyspSeq"));
		
		model.addAttribute("rt", service.selectOneRoom(vo));
		
		return "user/meet/meetRoom";
	}
	@RequestMapping(value = "/meet/meetEnd")
	public String meetEnd() {
		
		
		return "user/meet/meetEnd";
	}
	
}
