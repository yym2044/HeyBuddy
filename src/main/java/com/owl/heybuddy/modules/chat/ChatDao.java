package com.owl.heybuddy.modules.chat;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

@Repository
public class ChatDao {

	@Inject
	private SqlSession sqlSession;

	private static String namespace = "com.owl.heybuddy.modules.chat.ChatMpp";

	public List<Chat> selectListChatRoom(ChatVo vo) {
		return sqlSession.selectList(namespace + ".selectListChatRoom", vo); // 채팅룸
	}

	public List<Chat> selectListChatMember(ChatVo vo) {
		return sqlSession.selectList(namespace + ".selectListChatMember", vo); // 채팅멤버
	}

	public String selectOneChatRoom(ChatVo vo) {
		return sqlSession.selectOne(namespace + ".selectOneChatRoom", vo); // 채팅룸선택
	}

	public int insertChatRoom(Chat dto) {
		return sqlSession.insert(namespace + ".insertChatRoom", dto); // 채팅방등록
	}

	public int insertChatMember(Chat dto) {
		return sqlSession.insert(namespace + ".insertChatMember", dto); // 채팅멤버등록
	}

}