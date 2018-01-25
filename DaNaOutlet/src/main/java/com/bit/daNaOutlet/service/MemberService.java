package com.bit.daNaOutlet.service;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.ibatis.session.SqlSession;
import org.springframework.ui.Model;
import org.springframework.web.multipart.MultipartFile;

import com.bit.daNaOutlet.model.entity.DpgVo;
import com.bit.daNaOutlet.model.entity.HotDealVo;
import com.bit.daNaOutlet.model.entity.KaKaoMemberVo;
import com.bit.daNaOutlet.model.entity.MemberVo;
import com.bit.daNaOutlet.model.entity.ReplyVo;

public interface MemberService {

	
	/* 회원관리관련 서비스 */
	void selectAll(Model model) throws Exception;

	void selectOne(Model model, int mnum) throws Exception;
	
	void memberAdd(MemberVo bean) throws Exception;

	/* 핫딜관련서비스 */
	String hotDealAdd(HotDealVo bean,MultipartFile file,HttpServletRequest req) throws Exception;
 
 	void hotDealAll(Model model) throws Exception;
	
 	
	/* 클립관련 서비스 */
	void clipList(Model model) throws Exception;
	
	String login(MemberVo bean, HttpServletRequest req) throws Exception;

	String loginKakao(KaKaoMemberVo bean, HttpServletRequest req) throws Exception;
	
	/* DPG 관련 서비스*/
	String dpgAdd(DpgVo bean,MultipartFile file,HttpServletRequest req) throws Exception;
	String dpgAdd(DpgVo bean) throws Exception;
	void dpgDelete(int dpgNum, HttpServletResponse resp)throws Exception;
	void dpgUpdate(DpgVo bean,MultipartFile file,HttpServletRequest req)throws Exception;
	void dpgShow(Model model,String viewType,int startNum) throws Exception;
	void dpgMain(Model model) throws Exception;
 	void dpgEx(Model model,int startNum) throws Exception;
 	void dpgNone(Model model,int startNum) throws Exception;
 	void dpgNoneInputEditOne(Model model, Object dpgNum,int idx) throws Exception;

	void dpgNoneUpdateInsert(DpgVo bean,Model model, Object dpgNum, int idx) throws Exception;
	
	void dpgExInputEditOne(Model model, Object dpgNum,int idx) throws Exception;

	void dpgExUpdateInsert(DpgVo bean,Model model, Object dpgNum, int idx,MultipartFile file,HttpServletRequest req) throws Exception;
	

	boolean dpgUserChk(HttpServletRequest req) throws Exception;

 	/*댓글 서비스*/
 	List<ReplyVo> replyCall( int fatherContentsNum, HttpServletResponse resp) throws Exception;

	void dpgOne(Model model, int dpgNum) throws Exception;

	void replyAdd(ReplyVo bean, MultipartFile file, HttpServletRequest req) throws Exception;

	String logout(HttpServletRequest req) throws Exception;

	String loginChk(HttpServletRequest req, HttpServletResponse resp) throws Exception;

	boolean idDoubleChk(String chkId, HttpServletRequest req, HttpServletResponse resp) throws Exception;

	}