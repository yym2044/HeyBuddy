package com.owl.heybuddy.modules.meet;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.messaging.handler.annotation.MessageMapping;
import org.springframework.messaging.simp.SimpMessagingTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.fasterxml.jackson.databind.ObjectMapper;

@Controller
public class MeetController {
	
	@Autowired
	MeetServiceImpl service;
	
	private final SimpMessagingTemplate template;  
	
	Message message = new Message();
	
	public MeetController(final SimpMessagingTemplate template) {
		this.template = template;
	}
	
	@MessageMapping("/offer")
	public void offer(String offer) throws Exception {
		System.out.println(offer);
		template.convertAndSend("/sub/offer/" + this.message.getRoomId(), offer);
	}
	
	
	@MessageMapping("/initCall")
	public void initCall(Message message) throws Exception {
		template.convertAndSend("/sub/initCall/" + message.getRoomId(), message);
		this.message = message;
	}
	
	@MessageMapping("/userList")
	public void userList(Message message, MeetVo vo) throws Exception {
		
		ObjectMapper objectMapper = new ObjectMapper();
		
		List<Meet> list = service.selectListOneRoomMember(vo);
		
		String strMember = objectMapper.writeValueAsString(list);
		
		template.convertAndSend("/sub/userList/" + message.getRoomId(), strMember);
	}
	
	@MessageMapping("/joinRoom")
	public void joinRoom(Message message, Meet dto) throws Exception {
		
		System.out.println(message.getRoomId() + ", " + message.getWriter() + ", " + message.getMsg());
		
		template.convertAndSend("/sub/message/notice/" + message.getRoomId(), message);
	}
	
	@MessageMapping("/leaveRoom")
	public void leaveRoom(Message message, Meet dto) throws Exception {
		
		System.out.println(message.getRoomId() + ", " + message.getWriter() + ", " + message.getMsg());
		
		template.convertAndSend("/sub/message/notice/" + message.getRoomId(), message);
	}
	
	
	@MessageMapping("/chat")
	public void chat(Message message) throws Exception {
		template.convertAndSend("/sub/message/chat/" + message.getRoomId(), message);
	}
	
	
	
	@MessageMapping("/meetRoomList")
	public void meetRoomList(Message message, MeetVo vo) throws Exception {
		
		ObjectMapper objectMapper = new ObjectMapper();
		
		List<Meet> list = service.selectListRoom(vo);
		
		
		String strRoom = objectMapper.writeValueAsString(list);
		
		template.convertAndSend("/sub/meetRoomList", strRoom);
	}
	
	@MessageMapping("/meetRoomMemberList")
	public void meetRoomMemberList(Message message) throws Exception {
		ObjectMapper objectMapper = new ObjectMapper();
		
		String strMember = objectMapper.writeValueAsString(service.selectListRoomMember());
		
		template.convertAndSend("/sub/meetRoomMemberList", strMember);
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
	
	
	// 방을 만드는 경우 => meetRoom 으로 리디렉션
	@RequestMapping(value = "/meet/startRoom")
	public String startRoom(Meet dto, HttpSession httpSession, RedirectAttributes redirectAttributes) throws Exception {
		
		dto.setHyspSeq((String) httpSession.getAttribute("hyspSeq"));
		dto.setHymmSeq((String) httpSession.getAttribute("sessSeq"));
		dto.setHymmName((String) httpSession.getAttribute("sessName"));
		
		service.startRoom(dto);
		
		httpSession.setAttribute("hymrSeq", dto.getHymrSeq());
		httpSession.setAttribute("meetRoomHostNy", 1);
		
		return "redirect:/meet/meetRoom?" + dto.getHymrRoomId();
	}
	
	
	// 이미 있는 방에 들어가는 경우 => meetRoom 으로 리디렉션
	@RequestMapping(value = "/meet/enterRoom")
	public String enterRoom(Meet dto, HttpSession httpSession) throws Exception {
		
		service.enterRoom(dto);
		
		httpSession.setAttribute("hymrSeq", dto.getHymrSeq());
		httpSession.setAttribute("meetRoomHostNy", 0);
		
		return "redirect:/meet/meetRoom";
	}
	
	@RequestMapping(value = "/meet/meetEnter")
	public String meetEnter(Model model, @ModelAttribute("vo") MeetVo vo, HttpSession httpSession) throws Exception {
		
		vo.setHyspSeq((String)httpSession.getAttribute("hyspSeq"));
		
		model.addAttribute("rt", service.selectOneRoom(vo));
		
		return "user/meet/meetEnter";
	}
	@RequestMapping(value = "/meet/meetRoom")
	public String meetRoom(Model model, @ModelAttribute("vo") MeetVo vo, Meet dto, HttpSession httpSession) throws Exception {
		
		vo.setHyspSeq((String) httpSession.getAttribute("hyspSeq"));
		
		if(vo.getHymrSeq() == null) {
			vo.setHymrSeq((String) httpSession.getAttribute("hymrSeq"));
		}
		
		model.addAttribute("rt", service.selectOneRoom(vo));
		
		return "user/meet/meetRoom";
	}
	
	@RequestMapping(value = "/meet/meetLeave")
	public String meetLeave(MeetVo vo) throws Exception {
		
		service.leaveRoom(vo);
		
		return "redirect:/meet/meetList";
	}
	
	
	@RequestMapping(value = "/meet/meetEnd")
	public String meetEnd() {
		
		
		return "user/meet/meetEnd";
	}
	
}
