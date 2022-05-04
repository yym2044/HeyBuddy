package com.owl.heybuddy.modules.mySpace;

import java.util.Locale;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MySpaceController {
	
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

}
