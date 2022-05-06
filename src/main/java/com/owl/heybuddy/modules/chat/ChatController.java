package com.owl.heybuddy.modules.chat;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ChatController {
	
	@Autowired
	ChatServiceImpl service;

	@RequestMapping(value = "/chat/chat")
	public String chat() {

		return "user/chat/chat";
	}

}
