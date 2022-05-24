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

	public List<Chat> selectListChatMember(ChatVo vo) {
		return sqlSession.selectList(namespace + ".selectListChatMember", vo); // 채팅멤버
	}

}