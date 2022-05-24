package com.owl.heybuddy.modules.chat;

import java.util.List;

public interface ChatService {

	public List<Chat> selectListChatMember(ChatVo vo) throws Exception; // 채팅멤버
}