package com.bit.daNaOutlet.model;

import java.util.List;

import com.bit.daNaOutlet.model.entity.ClipVo;
import com.bit.daNaOutlet.model.entity.DpgVo;
import com.bit.daNaOutlet.model.entity.HotDealVo;
import com.bit.daNaOutlet.model.entity.KaKaoMemberVo;
import com.bit.daNaOutlet.model.entity.MemberVo;
import com.bit.daNaOutlet.model.entity.ReplyVo;

public interface MemberDao {
	/* -- ȸ�� ���� DAO -- */
	List<MemberVo> selectAll() throws Exception;

	MemberVo selectOne(int mnum) throws Exception;
	
	MemberVo selectOne(MemberVo bean) throws Exception;
	
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

	int login(MemberVo bean) throws Exception;

	int KakaoUserAdd(KaKaoMemberVo bean);
	int KakaoUserCount(KaKaoMemberVo bean);
	int kakolognum() throws Exception;
	
	/*DPG ���� DAO */
	List<DpgVo> dpgBestList() throws Exception;
	
	List<DpgVo> dpgBestNoneList() throws Exception;
	
	List<DpgVo> dpgImgLinkListDesc() throws Exception;
	
	List<DpgVo> dpgNoneLinkListDesc() throws Exception;
	
	List<DpgVo> dpgImgLinkListAsc(int startNum) throws Exception;
	
	List<DpgVo> dpgNoneLinkListAsc(int startNum) throws Exception;
	
	List<DpgVo> dpgAdminList() throws Exception;
	
	int dpgNumOne() throws Exception;
	int dpgImgCount() throws Exception;
	int dpgNoneCount() throws Exception;

	void dpgAdd(DpgVo bean) throws Exception;
	int dpgDelete(int dpgNum) throws Exception;
	int dpgUpdate(DpgVo bean) throws Exception;
	
	/*DPG��� ���� DAO*/
	List<ReplyVo> replyCall(int fatherContentsNum) throws Exception;

	DpgVo dpgOne(int dpgNum) throws Exception;

	int replyNumOne() throws Exception;

	void replyAdd(ReplyVo bean) throws Exception;

	int idDoubleChk(String chkId) throws Exception;

}