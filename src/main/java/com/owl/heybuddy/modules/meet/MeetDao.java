package com.owl.heybuddy.modules.meet;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

@Repository
public class MeetDao {

	@Inject
	private SqlSession sqlSession;
	  
	private static String namespace = "com.owl.heybuddy.modules.meet.MeetMpp";
	
	public List<Meet> selectListRoom(MeetVo vo) {return sqlSession.selectList(namespace + ".selectListRoom", vo); }
	public int selectOneCount(MeetVo vo) {return sqlSession.selectOne(namespace + ".selectOneCount", vo); }
	public Meet selectOneRoom(MeetVo vo) {return sqlSession.selectOne(namespace + ".selectOneRoom", vo); }
	public int insertRoom(Meet dto) {return sqlSession.insert(namespace + ".insertRoom", dto); }
}
