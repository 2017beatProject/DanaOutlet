package com.bit.daNaOutlet;

import static org.junit.Assert.*;

import org.junit.Before;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.bit.daNaOutlet.model.MemberDao;
import com.bit.daNaOutlet.model.entity.KaKaoMemberVo;

public class kakaoLogin {

	MemberDao dao;
	
	@Before
	public void setUp() throws Exception {
		ApplicationContext ac = new ClassPathXmlApplicationContext("/config-context.xml");
		dao=(MemberDao) ac.getBean("memberDao");
	}

	@Test
	public void testLoginKakao() {
		KaKaoMemberVo bean=new KaKaoMemberVo();
		bean.setIdKakaoLog(1801000001);
		bean.setLoginId("22");
//		dao.loginKakao(bean);
	}

}
