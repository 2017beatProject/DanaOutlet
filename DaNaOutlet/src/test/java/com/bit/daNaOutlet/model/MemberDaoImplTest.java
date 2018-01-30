package com.bit.daNaOutlet.model;

import static org.junit.Assert.*;

import java.util.List;

import org.junit.Before;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.bit.daNaOutlet.model.entity.MemberVo;

public class MemberDaoImplTest {
	MemberDao memberDao; 
	MemberVo bean;
	@Before
	public void setUp() throws Exception {
		ApplicationContext ac = new ClassPathXmlApplicationContext("config-context.xml");
		memberDao=(MemberDao)ac.getBean("memberDao");
		bean = new MemberVo();
	}

	@Test
	public void testSetSession() {
		fail("Not yet implemented");
	}

	@Test
	public void testMemberDaoImpl() {
		fail("Not yet implemented");
	}

	@Test
	public void testSelectAll() throws Exception {
		assertNotNull("dao가 null임",memberDao);
		assertNotNull("db수행결과 못받음",memberDao.selectAll());
		assertTrue("타입이 다름",memberDao.selectAll() instanceof List);
	}

	@Test
	public void testSelectOneInt() throws Exception {
		assertNotNull("db수행결과 못받음",memberDao.selectOne(2));
	}

	@Test
	public void testSelectOneMemberVo() throws Exception{
		assertNotNull("db수행결과 못받음",memberDao.selectOne(2));
	}

	@Test
	public void testMNumOne() throws Exception{
		assertNotNull("db수행결과 못받음",memberDao.mNumOne());
	}

	@Test
	public void testMemberAdd() throws Exception{		
//		assertNotNull("db수행결과 못받음",memberDao.memberAdd(bean));
	}

	@Test
	public void testHotDealNumOne() throws Exception{
		assertNotNull("db수행결과 못받음",memberDao.mNumOne());
	}

	@Test
	public void testHotDealAdd() throws Exception{
		assertNotNull("db수행결과 못받음",memberDao.mNumOne());
	}

	@Test
	public void testHotDealCount() throws Exception{
		assertNotNull("db수행결과 못받음",memberDao.mNumOne());	}

	@Test
	public void testHotDealAll() throws Exception{
		assertNotNull("db수행결과 못받음",memberDao.mNumOne());	}

	@Test
	public void testClipList() throws Exception{
		assertNotNull("db수행결과 못받음",memberDao.mNumOne());	}

	@Test
	public void testLogin() throws Exception{
		assertNotNull("db수행결과 못받음",memberDao.mNumOne());	}

	@Test
	public void testKakaoUserAdd() throws Exception{
		assertNotNull("db수행결과 못받음",memberDao.mNumOne());	}

	@Test
	public void testKakaoUserCount() throws Exception{
		assertNotNull("db수행결과 못받음",memberDao.mNumOne());	
		}

	@Test
	public void testKakolognum() throws Exception{
		assertNotNull("db수행결과 못받음",memberDao.mNumOne());	
		}

	@Test
	public void testDpgBestList() throws Exception{
		assertNotNull("db수행결과 못받음",memberDao.mNumOne());	
		}

	@Test
	public void testDpgBestNoneList() throws Exception{
		assertNotNull("db수행결과 못받음",memberDao.mNumOne());	
		}

	@Test
	public void testDpgImgLinkListDesc() throws Exception{
		assertNotNull("db수행결과 못받음",memberDao.mNumOne());	
		}

	@Test
	public void testDpgNoneLinkListDesc() throws Exception{
		assertNotNull("db수행결과 못받음",memberDao.mNumOne());	
		}

	@Test
	public void testDpgImgLinkListAsc() throws Exception{
		assertNotNull("db수행결과 못받음",memberDao.mNumOne());	
		}

	@Test
	public void testDpgNoneLinkListAsc() throws Exception{
		assertNotNull("db수행결과 못받음",memberDao.mNumOne());	
		}

	@Test
	public void testDpgAdminList() throws Exception{
		assertNotNull("db수행결과 못받음",memberDao.mNumOne());	
		}

	@Test
	public void testDpgNumOne() throws Exception{
		assertNotNull("db수행결과 못받음",memberDao.mNumOne());
		}

	@Test
	public void testDpgImgCount() throws Exception{
		assertNotNull("db수행결과 못받음",memberDao.mNumOne());
	}

	@Test
	public void testDpgNoneCount() throws Exception{
		assertNotNull("db수행결과 못받음",memberDao.mNumOne());
	}

	@Test
	public void testDpgAdd() throws Exception{
		assertNotNull("db수행결과 못받음",memberDao.mNumOne());
	}

	@Test
	public void testDpgOne() throws Exception{
		assertNotNull("db수행결과 못받음",memberDao.mNumOne());
	}

	@Test
	public void testDpgDelete() throws Exception{
		assertNotNull("db수행결과 못받음",memberDao.mNumOne());
	}

	@Test
	public void testDpgUpdate() throws Exception{
		assertNotNull("db수행결과 못받음",memberDao.mNumOne());
	}

	@Test
	public void testReplyCall() throws Exception{
		assertNotNull("db수행결과 못받음",memberDao.mNumOne());
	}

	@Test
	public void testReplyNumOne() throws Exception{
		assertNotNull("db수행결과 못받음",memberDao.mNumOne());
	}

	@Test
	public void testReplyAdd() throws Exception{
		assertNotNull("db수행결과 못받음",memberDao.mNumOne());
	}

	@Test
	public void testReplyDelete() throws Exception{
		assertNotNull("db수행결과 못받음",memberDao.mNumOne());
	}

	@Test
	public void testReplyDpgDeleteAll() throws Exception{
		assertNotNull("db수행결과 못받음",memberDao.mNumOne());
	}

	@Test
	public void testIdDoubleChk() throws Exception{
		assertNotNull("db수행결과 못받음",memberDao.mNumOne());
	}

	@Test
	public void testObject() throws Exception{
		fail("Not yet implemented");
	}

	@Test
	public void testGetClass() throws Exception{
		fail("Not yet implemented");
	}

	@Test
	public void testHashCode() throws Exception{
		fail("Not yet implemented");
	}

	@Test
	public void testEquals() throws Exception{
		fail("Not yet implemented");
	}

	@Test
	public void testClone() throws Exception{
		fail("Not yet implemented");
	}

	@Test
	public void testToString() throws Exception{
		fail("Not yet implemented");
	}

	@Test
	public void testNotify() throws Exception{
		fail("Not yet implemented");
	}

	@Test
	public void testNotifyAll() throws Exception{
		fail("Not yet implemented");
	}

	@Test
	public void testWaitLong() throws Exception{
		fail("Not yet implemented");
	}

	@Test
	public void testWaitLongInt() throws Exception{
		fail("Not yet implemented");
	}

	@Test
	public void testWait() throws Exception{
		fail("Not yet implemented");
	}

	@Test
	public void testFinalize() throws Exception{
		fail("Not yet implemented");
	}

}
