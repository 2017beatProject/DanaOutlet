package com.bit.daNaOutlet;

import static org.junit.Assert.*;

import org.junit.Before;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.bit.daNaOutlet.model.MemberDao;

public class ShowControllerTest {

	MemberDao dao;
	
	@Before
	public void setUp() throws Exception {
		ApplicationContext ac = new ClassPathXmlApplicationContext("/config-context.xml");
		dao=(MemberDao) ac.getBean("memberDao");		
	}

	@Test
	public void testJoinSuccess() {
		
	}

}
