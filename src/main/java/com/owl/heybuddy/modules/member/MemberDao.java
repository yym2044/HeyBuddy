package com.owl.heybuddy.modules.member;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

@Repository
public class MemberDao {
	
	@Inject
	private SqlSession sqlSession;
	
	private static String namespace = "com.owl.heybuddy.modules.member.MemberMpp";

}
