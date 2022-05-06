package com.owl.heybuddy.modules.mySpace;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MySpaceController {

	@RequestMapping(value = "/user/myProfile")
	public String myProfile() {
		return "/user/member/myProfile";
	}
	
	@RequestMapping(value = "/setting/authEdit")
	public String authEdit() {

		return "/user/setting/authEdit";
	}

	@RequestMapping(value = "/setting/authForm")
	public String authForm() {

		return "user/setting/authForm";
	}

	@RequestMapping(value = "/setting/authList")
	public String authList() {

		return "user/setting/authList";
	}

	@RequestMapping(value = "/setting/group")
	public String group() {

		return "user/setting/group";
	}

	@RequestMapping(value = "/setting/memberEdit")
	public String memberEdit() {

		return "user/setting/memberEdit";
	}

	@RequestMapping(value = "/setting/memberForm")
	public String memberForm() {

		return "user/setting/memberForm";
	}

	@RequestMapping(value = "/setting/memberList")
	public String memberList() {

		return "user/setting/memberList";
	}

	@RequestMapping(value = "/setting/memberView")
	public String memberView() {

		return "user/setting/memberView";
	}

	@RequestMapping(value = "/setting/profile")
	public String profile() {

		return "user/setting/profile";
	}

	@RequestMapping(value = "/setting/space")
	public String space() {

		return "user/setting/space";
	}

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
