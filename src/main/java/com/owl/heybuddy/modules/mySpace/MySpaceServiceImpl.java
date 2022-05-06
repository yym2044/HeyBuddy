package com.owl.heybuddy.modules.mySpace;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class MySpaceServiceImpl implements MySpaceService {

	@Autowired
	MySpaceDao dao;
	
}
