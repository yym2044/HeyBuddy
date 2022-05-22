package com.owl.heybuddy.modules.meet;

public class Message {

	private String roomId;
	private String writer;
	private String msg;
	private String rtc;
	
	private Integer hostNy;
	
	public String getWriter() {
		return writer;
	}
	public void setWriter(String writer) {
		this.writer = writer;
	}
	public String getRoomId() {
		return roomId;
	}
	public void setRoomId(String roomId) {
		this.roomId = roomId;
	}
	public String getMsg() {
		return msg;
	}
	public void setMsg(String msg) {
		this.msg = msg;
	}
	public Integer getHostNy() {
		return hostNy;
	}
	public void setHostNy(Integer hostNy) {
		this.hostNy = hostNy;
	}
	public String getRtc() {
		return rtc;
	}
	public void setRtc(String rtc) {
		this.rtc = rtc;
	}
	
	
}
