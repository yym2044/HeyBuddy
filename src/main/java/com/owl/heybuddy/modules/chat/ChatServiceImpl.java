package com.owl.heybuddy.modules.chat;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ChatServiceImpl implements ChatService {

	@Autowired
	ChatDao dao;

	@Override
	public List<Chat> selectListChatRoom(ChatVo vo) throws Exception { // 채팅룸
		return dao.selectListChatRoom(vo);
	}

	@Override
	public List<Chat> selectListChatMember(ChatVo vo) throws Exception { // 채팅멤버
		return dao.selectListChatMember(vo);
	}

	@Override
	public String selectOneChatRoom(ChatVo vo) throws Exception { // 채팅룸 선택
		return dao.selectOneChatRoom(vo);
	}

	@Override
	public int insertChatRoom(Chat dto) throws Exception { // 채팅방 등록

		return dao.insertChatRoom(dto);

	}

	@Override
	public int insertChatMember(Chat dto) throws Exception { // 채팅멤버 등록

		return dao.insertChatMember(dto);

	}

	@Override
	public int insertChatMember2(Chat dto) throws Exception { // 채팅멤버 등록

		return dao.insertChatMember2(dto);

	}

	@Override
	public int ueleteChat(ChatVo vo) throws Exception { // 채팅가짜삭제
		return dao.ueleteChat(vo);
	}

}