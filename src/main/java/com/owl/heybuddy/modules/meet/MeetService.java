package com.owl.heybuddy.modules.meet;

import java.util.List;

public interface MeetService {
	
	public List<Meet> selectListRoom(MeetVo vo) throws Exception;
	public List<Meet> selectListRoomMember() throws Exception;
	public int selectOneCount(MeetVo vo) throws Exception;
	public Meet selectOneRoom(MeetVo vo) throws Exception;
	public List<Meet> selectListOneRoomMember(MeetVo vo) throws Exception;
	public int insertRoom(Meet dto) throws Exception;
}
