package com.owl.heybuddy.modules.chat;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

@Controller
public class ChatController {
	
	@Autowired
	ChatServiceImpl service;

} 
