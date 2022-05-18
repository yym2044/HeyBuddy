package com.owl.heybuddy.modules.mySpace;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

@Repository
public class MySpaceDao {

	@Inject
	private SqlSession sqlSession;

	private static String namespace = "com.owl.heybuddy.modules.mySpace.MySpaceMpp";

	public int selectOneCount(MySpaceVo vo) {
		return sqlSession.selectOne(namespace + ".selectOneCount", vo); // counting
	}

	public List<MySpace> selectListMySpace(MySpaceVo vo) {
		return sqlSession.selectList(namespace + ".selectListMySpace", vo); // 스페이스리스트
	}

	public List<MySpace> selectListMember(MySpaceVo vo) {
		return sqlSession.selectList(namespace + ".selectListMember", vo); // 멤버리스트
	}

	public List<MySpace> selectListReceive(MySpaceVo vo) {
		return sqlSession.selectList(namespace + ".selectListReceive", vo); // 초대받은리스트
	}

	public List<MySpace> selectListSend(MySpaceVo vo) {
		return sqlSession.selectList(namespace + ".selectListSend", vo); // 초대리스트
	}

	public MySpace selectOneMember(MySpaceVo vo) {
		return sqlSession.selectOne(namespace + ".selectOneMember", vo); // 이름으로멤버찾기
	}

	public MySpace selectOneMySpace(MySpaceVo vo) {
		return sqlSession.selectOne(namespace + ".selectOneMySpace", vo); // 스페이스뷰
	}

	public MySpace selectOneReceive(MySpaceVo vo) {
		return sqlSession.selectOne(namespace + ".selectOneReceive", vo); // 초대뷰
	}

	public int insertMySpace(MySpace dto) {
		return sqlSession.insert(namespace + ".insertMySpace", dto); // 스페이스등록
	}

	public int insertMySpaceHost(MySpace dto) {

		return sqlSession.insert(namespace + ".insertMySpaceHost", dto); // 스페이스등록(호스트등록)
	}

	public int insertMySpaceGuest(MySpace dto) {

		return sqlSession.insert(namespace + ".insertMySpaceGuest", dto); // 스페이스멤버초대
	}

	public int updateMySpace(MySpace dto) {
		return sqlSession.update(namespace + ".updateMySpace", dto); // 스페이스수정
	}

	public int updateReceiveYes(MySpace dto) {
		return sqlSession.update(namespace + ".updateReceiveYes", dto); // 허락
	}

	public int updateReceiveNo(MySpace dto) {
		return sqlSession.update(namespace + ".updateReceiveNo", dto); // 거절
	}

	public int deleteMySpace(MySpaceVo vo) {
		return sqlSession.delete(namespace + ".deleteMySpace", vo); // 스페이스삭제
	}

	public int ueleteMySpace(MySpaceVo vo) {
		return sqlSession.update(namespace + ".ueleteMySpace", vo); // 스페이스가짜삭제
	}

}