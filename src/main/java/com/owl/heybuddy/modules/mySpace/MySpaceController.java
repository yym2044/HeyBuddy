package com.owl.heybuddy.modules.mySpace;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

@Controller
public class MySpaceController {
	
	@Autowired
	MySpaceServiceImpl service;

}
