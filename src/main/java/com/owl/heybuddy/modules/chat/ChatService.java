package com.owl.heybuddy.modules.chat;

import java.util.List;

public interface ChatService {

	public List<Chat> selectListChatRoom(ChatVo vo) throws Exception; // 채팅룸

	public List<Chat> selectListChatMember(ChatVo vo) throws Exception; // 채팅멤버

	public String selectOneChatRoom(ChatVo vo) throws Exception; // 채팅룸선택

	public int insertChatRoom(Chat dto) throws Exception; // 채팅방 등록

	public int insertChatMember(Chat dto) throws Exception; // 채팅멤버등록

}