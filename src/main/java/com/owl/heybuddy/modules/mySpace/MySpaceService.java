package com.owl.heybuddy.modules.mySpace;

import java.util.List;

public interface MySpaceService {

	public int selectOneCount(MySpaceVo vo) throws Exception; // counting

	public List<MySpace> selectListMySpace(MySpaceVo vo) throws Exception; // 스페이스리스트

	public List<MySpace> selectListMember(MySpaceVo vo) throws Exception; // 멤버리스트

	public List<MySpace> selectListReceive(MySpaceVo vo) throws Exception; // 초대받은리스트

	public List<MySpace> selectListSend(MySpaceVo vo) throws Exception; // 초대리스트

	public MySpace selectOneMember(MySpaceVo vo) throws Exception; // 이름으로멤버찾기

	public MySpace selectOneMySpace(MySpaceVo vo) throws Exception; // 스페이스뷰

	public MySpace selectOneReceive(MySpaceVo vo) throws Exception; // 초대뷰

	public int insertMySpace(MySpace dto) throws Exception; // 스페이스등록

	public int insertMySpaceHost(MySpace dto) throws Exception; // 스페이스등록(호스트등록)

	public int insertMySpaceGuest(MySpace dto) throws Exception; // 스페이스멤버초대

	int updateMySpace(MySpace dto) throws Exception; // 스페이스수정

	int updateReceiveYes(MySpace dto) throws Exception; // 초대수락

	int updateReceiveNo(MySpace dto) throws Exception; // 초대거절

	int deleteMySpace(MySpaceVo vo) throws Exception; // 스페이스삭제

	int ueleteMySpace(MySpaceVo vo) throws Exception; // 스페이스가짜삭제
	
	// 호스트 설정 부분
	
	public int updateMySpaceHost(MySpace dto) throws Exception;
	public MySpace selectOneMySpaceHost(MySpaceVo vo) throws Exception;
}