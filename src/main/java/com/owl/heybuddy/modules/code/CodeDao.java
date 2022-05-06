package com.owl.heybuddy.modules.code;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

@Repository
public class CodeDao {
	
	@Inject
	private SqlSession sqlSession;
	  
	private static String namespace = "com.owl.heybuddy.modules.code.CodeMpp";

	public List<Code> selectListForCache() {return sqlSession.selectList(namespace + ".selectListForCache", "");}

}