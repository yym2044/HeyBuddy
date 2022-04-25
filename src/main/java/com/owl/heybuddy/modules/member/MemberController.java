package com.owl.heybuddy.modules.member;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

@Controller
public class MemberController {
	
	@Autowired
	MemberServiceImpl service;

}
