package com.owl.heybuddy.modules.meet;


import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.messaging.handler.annotation.MessageMapping;
import org.springframework.messaging.simp.SimpMessagingTemplate;
import org.springframework.stereotype.Controller;

import com.fasterxml.jackson.databind.ObjectMapper;


@Controller
public class StompController {
	
	@Autowired
	MeetServiceImpl service;

	private final SimpMessagingTemplate template;
	
	public StompController(final SimpMessagingTemplate template) {
		this.template = template;
	}
	
	Message message = new Message();

	List<String> pcList = new ArrayList<>();
	
	public void printUserList() throws Exception {
		System.out.println("소컷에 접속중인 유저시퀀스");
		for(String user : pcList) {
			System.out.println(user);
		}
	}
	
	
	@MessageMapping("/offer")
	public void offer(String offer) throws Exception {
		System.out.println("######  offer  ######");
		System.out.println(offer);
		
		template.convertAndSend("/sub/offer/" + this.message.getRoomId(), offer);
//		for(String user : pcList) {
//			template.convertAndSend("/sub/offer/" + user, offer);
//		}
	}
	
	@MessageMapping("/answer")
	public void answer(String answer) throws Exception {
		System.out.println("######  answer  ######");
		System.out.println(answer);
		template.convertAndSend("/sub/answer/" + this.message.getRoomId(), answer);
	}
	
	@MessageMapping("/ice")
	public void ice(String ice) throws Exception {
		template.convertAndSend("/sub/ice/" + this.message.getRoomId(), ice);
	}
	
	@MessageMapping("/userList")
	public void userList(Message message, MeetVo vo) throws Exception {
		
		ObjectMapper objectMapper = new ObjectMapper();
		
		List<Meet> list = service.selectListOneRoomMember(vo);
		
		String strMember = objectMapper.writeValueAsString(list);
		
		template.convertAndSend("/sub/userList/" + message.getRoomId(), strMember);
	}
	
	
	
	@MessageMapping("/chatBox")
	public void chatBox(Message message) throws Exception {
		
		if(message.getType().equals("notice_enter")) {
			pcList.add(message.getSender());
			printUserList();
		} else if(message.getType().equals("notice_leave")) {
			pcList.remove(message.getSender());
			printUserList();
		}
		
		
		
		this.message.setRoomId(message.getRoomId());
		
		template.convertAndSend("/sub/chatBox/" + message.getRoomId(), message);
		
	}
	
	// MeetList.jsp start
	@MessageMapping("/meetRoomList")
	public void meetRoomList(Message message) throws Exception {
		
		ObjectMapper objectMapper = new ObjectMapper();
		
		List<Meet> list = service.selectListRoom();
		
		
		String strRoom = objectMapper.writeValueAsString(list);
		
		template.convertAndSend("/sub/meetRoomList", strRoom);
	}
	
	@MessageMapping("/meetRoomMemberList")
	public void meetRoomMemberList(Message message) throws Exception {
		ObjectMapper objectMapper = new ObjectMapper();
		
		String strMember = objectMapper.writeValueAsString(service.selectListRoomMember());
		
		template.convertAndSend("/sub/meetRoomMemberList", strMember);
	}
	// MeetList.jsp end
}
