package com.owl.heybuddy.modules.chat;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ChatServiceImpl implements ChatService {

	@Autowired
	ChatDao dao;

	@Override
	public List<Chat> selectListChatMember(ChatVo vo) throws Exception { // 채팅멤버
		return dao.selectListChatMember(vo);
	}
}