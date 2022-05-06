package com.owl.heybuddy.modules.code;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

@Controller
public class CodeController {

	@Autowired
	CodeServiceImpl service;
  
}