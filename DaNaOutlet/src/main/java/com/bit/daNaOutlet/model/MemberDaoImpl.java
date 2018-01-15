package com.bit.daNaOutlet.model;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.log4j.Logger;

import com.bit.daNaOutlet.model.entity.ClipVo;
import com.bit.daNaOutlet.model.entity.LoginVo;
import com.bit.daNaOutlet.model.entity.MemberVo;

public class MemberDaoImpl implements MemberDao {
	SqlSession session;

	Logger log;
	
	public void setSession(SqlSession session) {
		this.session = session;
	}

	public MemberDaoImpl() {
		// TODO Auto-generated constructor stub
		try {
			log=Logger.getLogger(Class.forName("com.bit.daNaOutlet.model.MemberDaoImpl"));
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	// 회원관리
	@Override
	public List<MemberVo> selectAll() throws Exception {
		// TODO Auto-generated method stub
		return session.selectList("com.bit.daNaOutlet.model.MemberDao.selectAll");
	}

	@Override
	public Object selectOne(int mnum) throws Exception {
		// TODO Auto-generated method stub
		return session.selectOne("com.bit.daNaOutlet.model.MemberDao.selectOne", mnum);
	}

	@Override
	public int mNumOne() throws Exception { // 회원 번호 프라이머리키 시퀀스 기능 대신 해주는 Dao
		return session.selectOne("com.bit.daNaOutlet.model.MemberDao.mnumOne");
	}

	@Override
	public void memberAdd(MemberVo bean) {
		session.insert("com.bit.daNaOutlet.model.MemberDao.memberAdd", bean);
	}

	// 클립
	@Override
	public List<ClipVo> clipList() throws Exception {
		// TODO Auto-generated method stub
		return session.selectList("com.bit.daNaOutlet.model.MemberDao.clipList");
	}

	@Override//로그인 아이디 비번 확인- 1 - 확인 2 - 실패
	public int login(LoginVo bean) throws Exception {
		//단위테스트 완료		
		return (Integer)session.selectOne("com.bit.daNaOutlet.model.MemberDao.loginChk", bean);		
		
				
	}

	
	@Override//카카오톡 로그인
	public int loginKakao(LoginVo bean) {
		
		return session.insert("com.bit.daNaOutlet.model.MemberDao.loginKakao",bean);
	}

	@Override
	public int kakolognum() throws Exception { // 회원 번호 프라이머리키 시퀀스 기능 대신 해주는 Dao
		return session.selectOne("com.bit.daNaOutlet.model.MemberDao.mnumOne");
	}
	
}