package com.owl.heybuddy.modules.mySpace;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller 
public class MySpaceController {
	
	@Autowired
	MySpaceServiceImpl service;

	@RequestMapping(value = "/user/myProfile")
	public String myProfile() {
		return "/user/member/myProfile";
	}
	
	/******************************* 호스트 메뉴 Start *******************************/
	
	@RequestMapping(value = "/setting/profile")
	public String profile() {

		return "user/setting/profile";
	}

	@RequestMapping(value = "/setting/space")
	public String space() {

		return "user/setting/space";
	}
	
	/******************************* 호스트 메뉴 End *******************************/


	@RequestMapping(value = "/mySpace/mySpaceForm")
	public String mySpaceForm() {

		return "user/mySpace/mySpaceForm";
	}

	@RequestMapping(value = "/mySpace/mySpaceList")
	public String mySpaceList() {

		return "user/mySpace/mySpaceList";
	}

	@RequestMapping(value = "/mySpace/mySpaceReceive")
	public String mySpaceReceive() {

		return "user/mySpace/mySpaceReceive";
	}

	@RequestMapping(value = "/mySpace/mySpaceSend")
	public String mySpaceSend() {

		return "user/mySpace/mySpaceSend";
	}

	@RequestMapping(value = "/mySpace/mySpaceSendList")
	public String mySpaceSendList() {

		return "user/mySpace/mySpaceSendList";
	}
}
