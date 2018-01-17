package com.bit.daNaOutlet.model;

import java.util.List;

import com.bit.daNaOutlet.model.entity.ClipVo;
import com.bit.daNaOutlet.model.entity.DpgVo;
import com.bit.daNaOutlet.model.entity.HotDealVo;
import com.bit.daNaOutlet.model.entity.LoginVo;
import com.bit.daNaOutlet.model.entity.MemberVo;

public interface MemberDao {
	/* -- ȸ�� ���� DAO -- */
	List<MemberVo> selectAll() throws Exception;

	MemberVo selectOne(int mnum) throws Exception;

	int mNumOne() throws Exception;

	void memberAdd(MemberVo bean);

	/* -- �ֵ� ���� DAO -- */
	void hotDealAdd(HotDealVo bean);

	int hotDealNumOne() throws Exception;

	int hotDealCount() throws Exception;

	List<HotDealVo> hotDealAll() throws Exception;

	/* -- Ŭ�� ���� DAO -- */
	List<ClipVo> clipList() throws Exception;

	/* -- �α��� ���� DAO -- */

	int login(LoginVo bean) throws Exception;

	int loginKakao(LoginVo bean);

	int kakolognum() throws Exception;
	
	/*DPG ���� DAO */
	List<DpgVo> dpgBestList() throws Exception;
	
	List<DpgVo> dpgImgLinkList() throws Exception;
	
	List<DpgVo> dpgNoneLinkList() throws Exception;
	
	int dpgNumOne() throws Exception;

	void dpgAdd(DpgVo bean) throws Exception;

}