package com.owl.heybuddy.modules.chat;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ChatServiceImpl implements ChatService {

	@Autowired
	ChatDao dao;
}