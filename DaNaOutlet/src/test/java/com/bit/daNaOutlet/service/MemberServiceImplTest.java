package com.bit.daNaOutlet.service;

import static org.junit.Assert.*;

import org.junit.Before;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.bit.daNaOutlet.model.MemberDao;
import com.bit.daNaOutlet.model.entity.LoginVo;

public class MemberServiceImplTest {

	MemberDao dao;
	LoginVo bean;
	@Before
	public void setUp() throws Exception {
		ApplicationContext ac = new ClassPathXmlApplicationContext("/config-context.xml");
		dao=(MemberDao) ac.getBean("memberDao");
		bean=new LoginVo();
		bean.setIdKakaoLog(2017);
		bean.setLoginId("test1");		
		bean.setNickName("test2");
		
	}

	@Test
	public void testLoginKakao() throws Exception {
		
		
		
		dao.loginKakao(bean);
		
	}

}
