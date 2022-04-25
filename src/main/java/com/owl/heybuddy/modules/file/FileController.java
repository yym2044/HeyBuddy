package com.owl.heybuddy.modules.file;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

@Controller
public class FileController {
	
	@Autowired
	FileServiceImpl service;

}
