package com.owl.heybuddy.modules.mySpace;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class MySpaceServiceImpl implements MySpaceService {

	@Autowired
	MySpaceDao dao;

	@Override
	public List<MySpace> selectListMySpace(MySpaceVo vo) throws Exception { // 스페이스리스트
		return dao.selectListMySpace(vo);
	}

	@Override
	public MySpace selectOneMySpace(MySpaceVo vo) throws Exception { // 스페이스뷰
		return dao.selectOneMySpace(vo);
	}

	@Override
	public int insertMySpace(MySpace dto) throws Exception { // 스페이스등록
		 dao.insertMySpace(dto);
		 dao.insertMySpaceMember(dto);
		return 1;
	}

	@Override
	public int updateMySpace(MySpace dto) throws Exception { // 스페이스수정
		return dao.updateMySpace(dto);
	}

	@Override
	public int deleteMySpace(MySpaceVo vo) { // 스페이스삭제
		return dao.deleteMySpace(vo);
	}

	@Override
	public int ueleteMySpace(MySpaceVo vo) throws Exception { // 스페이스가짜삭제
		return dao.ueleteMySpace(vo);
	}
}
