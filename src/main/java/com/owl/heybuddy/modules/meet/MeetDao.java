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
	public List<Meet> selectListRoomMember() {return sqlSession.selectList(namespace + ".selectListRoomMember"); }
	public int selectOneCount(MeetVo vo) {return sqlSession.selectOne(namespace + ".selectOneCount", vo); }
	public Meet selectOneRoom(MeetVo vo) {return sqlSession.selectOne(namespace + ".selectOneRoom", vo); }
	public List<Meet> selectListOneRoomMember(MeetVo vo) {return sqlSession.selectList(namespace + ".selectListOneRoomMember", vo); }
	public int insertRoom(Meet dto) {return sqlSession.insert(namespace + ".insertRoom", dto); }
	public int insertRoomMember(Meet dto) {return sqlSession.insert(namespace + ".insertRoomMember", dto); }
	
	public int deleteRoom(MeetVo vo) {return sqlSession.delete(namespace + ".deleteRoom", vo); }
	public int deleteRoomMember(MeetVo vo) {return sqlSession.delete(namespace + ".deleteRoomMember", vo); }
	public int deleteRoomMemberAll(MeetVo vo) {return sqlSession.delete(namespace + ".deleteRoomMemberAll", vo); }
}
