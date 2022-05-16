package com.owl.heybuddy.modules.chat;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

@Repository
public class ChatDao {

	@Inject
	private SqlSession sqlSession;

	private static String namespace = "com.owl.heybuddy.modules.chat.ChatMpp";

}