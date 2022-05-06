package com.owl.heybuddy.modules.meet;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class MeetServiceImpl implements MeetService {

	@Autowired
	MeetDao dao;
	
}
