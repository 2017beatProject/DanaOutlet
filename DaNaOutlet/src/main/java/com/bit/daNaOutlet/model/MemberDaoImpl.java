package com.bit.daNaOutlet.model;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.log4j.Logger;

import com.bit.daNaOutlet.model.entity.ClipVo;
import com.bit.daNaOutlet.model.entity.DpgVo;
import com.bit.daNaOutlet.model.entity.HotDealVo;
import com.bit.daNaOutlet.model.entity.LoginVo;
import com.bit.daNaOutlet.model.entity.MemberVo;
import com.bit.daNaOutlet.model.entity.ReplyVo;

public class MemberDaoImpl implements MemberDao {
	SqlSession session;

	Logger log;

	public void setSession(SqlSession session) {
		this.session = session;
	}

	public MemberDaoImpl() {
		// TODO Auto-generated constructor stub
		try {
			log = Logger.getLogger(Class.forName("com.bit.daNaOutlet.model.MemberDaoImpl"));
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	// ȸ������
	@Override
	public List<MemberVo> selectAll() throws Exception {
		// TODO Auto-generated method stub
		return session.selectList("com.bit.daNaOutlet.model.MemberDao.selectAll");
	}

	@Override
	public MemberVo selectOne(int mnum) throws Exception {
		return session.selectOne("com.bit.daNaOutlet.model.MemberDao.selectOne", mnum);
	}

	@Override
	public int mNumOne() throws Exception { // ȸ�� ��ȣ �����̸Ӹ�Ű ������ ��� ��� ���ִ� Dao
		return session.selectOne("com.bit.daNaOutlet.model.MemberDao.mnumOne");
	}

	@Override
	public void memberAdd(MemberVo bean) {
		session.insert("com.bit.daNaOutlet.model.MemberDao.memberAdd", bean);
	}

	// HOTDEAL table �� primary key max �� ��ȸ ,ȸ�� ��ȣ �����̸Ӹ�Ű ������ ��� ��� ���ִ� Dao
	@Override
	public int hotDealNumOne() throws Exception {
		// TODO Auto-generated method stub
		return session.selectOne("com.bit.daNaOutlet.model.MemberDao.hotDealNumOne");
	}

	// HOTDEAL DB insert �� �̹��� ���ε�
	@Override
	public void hotDealAdd(HotDealVo bean) {
		session.insert("com.bit.daNaOutlet.model.MemberDao.hotDealAdd", bean);
	}

	// HOTDEAL �� ����� �� ���� count
	@Override
	public int hotDealCount() throws Exception {
		return session.selectOne("com.bit.daNaOutlet.model.MemberDao.hotDealCount");
	}

	// �ֵ� ����Ʈ ����
	@Override
	public List<HotDealVo> hotDealAll() throws Exception {
		return session.selectList("com.bit.daNaOutlet.model.MemberDao.hotDealAll");
	}

	// Ŭ��
	@Override
	public List<ClipVo> clipList() throws Exception {
		// TODO Auto-generated method stub
		return session.selectList("com.bit.daNaOutlet.model.MemberDao.clipList");
	}

	@Override // �α��� ���̵� ��� Ȯ��- 1 - Ȯ�� 2 - ����
	public int login(LoginVo bean) throws Exception {
		// �����׽�Ʈ �Ϸ�
		return (Integer) session.selectOne("com.bit.daNaOutlet.model.MemberDao.loginChk", bean);
	}
	@Override // īī���� �α���
	public int loginKakao(LoginVo bean) {
		return session.insert("com.bit.daNaOutlet.model.MemberDao.loginKakao", bean);
	}

	@Override
	public int kakolognum() throws Exception { // ȸ�� ��ȣ �����̸Ӹ�Ű ������ ��� ��� ���ִ� Dao
		return session.selectOne("com.bit.daNaOutlet.model.MemberDao.idKakoaLogCount");
	}
	/* Dpg ���� �κ�*/
	@Override
	public List<DpgVo> dpgBestList() throws Exception {
		return session.selectList("com.bit.daNaOutlet.model.MemberDao.dpgBestList");
	}
	@Override
	public List<DpgVo> dpgImgLinkListDesc() throws Exception {
		return session.selectList("com.bit.daNaOutlet.model.MemberDao.dpgImgLinkListDesc");
	}

	@Override
	public List<DpgVo> dpgNoneLinkListDesc() throws Exception {
		return session.selectList("com.bit.daNaOutlet.model.MemberDao.dpgNoneLinkListDesc");

	}
	@Override
	public List<DpgVo> dpgImgLinkListAsc(int startNum) throws Exception {
		return session.selectList("com.bit.daNaOutlet.model.MemberDao.dpgImgLinkListAsc",startNum);
	}

	@Override
	public List<DpgVo> dpgNoneLinkListAsc(int startNum) throws Exception {
		return session.selectList("com.bit.daNaOutlet.model.MemberDao.dpgNoneLinkListAsc",startNum);

	}
	@Override
	public List<DpgVo> dpgAdminList() throws Exception {
		return session.selectList("com.bit.daNaOutlet.model.MemberDao.dpgAdminList");
	}
	/* ------������� dpg ���ο��� �� dao-------  */
	@Override
	public int dpgNumOne() throws Exception {
		
		return session.selectOne("com.bit.daNaOutlet.model.MemberDao.dpgNumOne");
	}
	@Override
	public int dpgImgCount() throws Exception {		
		return session.selectOne("com.bit.daNaOutlet.model.MemberDao.dpgImgCount");
	}

	@Override
	public int dpgNoneCount() throws Exception {
		return session.selectOne("com.bit.daNaOutlet.model.MemberDao.dpgNoneCount");
	}		
	
	
	
	
	@Override
	public void dpgAdd(DpgVo bean) throws Exception {
		session.insert("com.bit.daNaOutlet.model.MemberDao.dpgAdd", bean);	
	}
	/* ......................................................... */

	@Override//Dpg ������
	public DpgVo dpgOne(int dpgNum) throws Exception {
		return session.selectOne("com.bit.daNaOutlet.model.MemberDao.dpgOne", dpgNum);
	}
	
	@Override
	public List<ReplyVo> replyCall(int fatherContentsNum) throws Exception {
		
		return session.selectList("com.bit.daNaOutlet.model.MemberDao.replyCall", fatherContentsNum);
	}

	@Override
	public int dpgDelete(DpgVo bean) throws Exception {
		return session.delete("com.bit.daNaOutlet.model.MemberDao.dpgDelete", bean);
	}

	@Override
	public int dpgUpdate(DpgVo bean) throws Exception {
		return session.delete("com.bit.daNaOutlet.model.MemberDao.dpgUpdate", bean);
	}

	
}