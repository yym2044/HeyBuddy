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
	public List<Chat> selectListChatMember2(ChatVo vo) throws Exception { // 채팅멤버리스트
		return dao.selectListChatMember2(vo);
	}

	@Override
	public int selectOneChatMember(ChatVo vo) throws Exception { // 채팅멤버수
		return dao.selectOneChatMember(vo);
	}

	@Override
	public List<Chat> selectListMember(ChatVo vo) throws Exception { // 스페이스멤버
		return dao.selectListMember(vo);
	}

	@Override
	public List<Chat> selectListGroupCheck(ChatVo vo) throws Exception { // 채팅룸 리스트
		return dao.selectListGroupCheck(vo);
	}

	@Override
	public int selectOneGroupCheckNum(ChatVo vo) throws Exception { // 채팅룸 리스트
		return dao.selectOneGroupCheckNum(vo);
	}

	@Override
	public Chat selectOneChat(ChatVo vo) throws Exception { // 채팅룸 리스트
		return dao.selectOneChat(vo);
	}

	@Override
	public Chat selectOneChatRoom(ChatVo vo) throws Exception { // 채팅룸 선택
		return dao.selectOneChatRoom(vo);
	}

	@Override
	public Chat selectOneCheck(ChatVo vo) throws Exception { // 채팅룸체크
		return dao.selectOneCheck(vo);
	}

	@Override
	public Chat selectOneCheck2(ChatVo vo) throws Exception { // 채팅룸체크2
		return dao.selectOneCheck2(vo);
	}

	@Override
	public String selectOneCheck3(ChatVo vo) throws Exception { // 채팅룸체크3
		return dao.selectOneCheck3(vo);
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