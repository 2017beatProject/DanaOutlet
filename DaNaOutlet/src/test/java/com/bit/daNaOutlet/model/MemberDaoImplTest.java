package com.bit.daNaOutlet.model;

import static org.junit.Assert.*;

import org.junit.Before;
import org.junit.BeforeClass;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.bit.daNaOutlet.model.entity.LoginVo;

public class MemberDaoImplTest {

	MemberDao dao;
	
	@Before
	public void MemberDao() {
		ApplicationContext ac = new ClassPathXmlApplicationContext("/config-context.xml");
		dao=(MemberDao) ac.getBean("memberDao");
		
	}
	
	@Test
	public void test() throws Exception {
		LoginVo bean=new LoginVo();
		System.out.println(bean.getLoginId());
		assertNotNull(dao.login(bean));
	}

}
