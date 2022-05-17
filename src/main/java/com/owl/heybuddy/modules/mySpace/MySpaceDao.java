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

	public List<MySpace> selectListReceive(MySpaceVo vo) {
		return sqlSession.selectList(namespace + ".selectListReceive", vo); // 초대받은리스트
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

	public int insertMySpaceMember(MySpace dto) {

		return sqlSession.insert(namespace + ".insertMySpaceMember", dto); // 스페이스등록
	}

	public int updateMySpace(MySpace dto) {
		return sqlSession.update(namespace + ".updateMySpace", dto); // 스페이스수정
	}

	public int deleteMySpace(MySpaceVo vo) {
		return sqlSession.delete(namespace + ".deleteMySpace", vo); // 스페이스삭제
	}

	public int ueleteMySpace(MySpaceVo vo) {
		return sqlSession.update(namespace + ".ueleteMySpace", vo); // 스페이스가짜삭제
	}

}