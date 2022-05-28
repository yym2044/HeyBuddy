package com.owl.heybuddy.modules.meet;

import java.util.List;

public interface MeetService {
	
	public List<Meet> selectListRoom() throws Exception;
	public List<Meet> selectListRoomMember() throws Exception;
	public int selectOneCount(MeetVo vo) throws Exception;
	public Meet selectOneRoom(MeetVo vo) throws Exception;
	public List<Meet> selectListOneRoomMember(MeetVo vo) throws Exception;
	public int startRoom(Meet dto) throws Exception;
	public int enterRoom(Meet dto) throws Exception;
	public int leaveRoom(MeetVo vo) throws Exception;
}
  