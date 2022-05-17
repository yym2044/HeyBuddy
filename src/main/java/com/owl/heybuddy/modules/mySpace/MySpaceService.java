package com.owl.heybuddy.modules.mySpace;

import java.util.List;

public interface MySpaceService {

	public int selectOneCount(MySpaceVo vo) throws Exception; // counting

	public List<MySpace> selectListMySpace(MySpaceVo vo) throws Exception; // 스페이스리스트

	public List<MySpace> selectListReceive(MySpaceVo vo) throws Exception; // 초대받은리스트

	public MySpace selectOneMySpace(MySpaceVo vo) throws Exception; // 스페이스뷰

	public MySpace selectOneReceive(MySpaceVo vo) throws Exception; // 초대뷰

	public int insertMySpace(MySpace dto) throws Exception; // 스페이스등록

	public int insertMySpaceMember(MySpace dto) throws Exception; // 스페이스등록

	int updateMySpace(MySpace dto) throws Exception; // 스페이스수정

	int deleteMySpace(MySpaceVo vo) throws Exception; // 스페이스삭제

	int ueleteMySpace(MySpaceVo vo) throws Exception; // 스페이스가짜삭제
}