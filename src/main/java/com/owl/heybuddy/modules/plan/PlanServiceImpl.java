package com.owl.heybuddy.modules.plan;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class PlanServiceImpl implements PlanService {

	@Autowired
	PlanDao dao;
}
