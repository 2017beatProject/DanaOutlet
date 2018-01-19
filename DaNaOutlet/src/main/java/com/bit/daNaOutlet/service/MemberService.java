package com.bit.daNaOutlet.service;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.ibatis.session.SqlSession;
import org.springframework.ui.Model;
import org.springframework.web.multipart.MultipartFile;

import com.bit.daNaOutlet.model.entity.DpgVo;
import com.bit.daNaOutlet.model.entity.HotDealVo;
import com.bit.daNaOutlet.model.entity.LoginVo;
import com.bit.daNaOutlet.model.entity.MemberVo;
import com.bit.daNaOutlet.model.entity.ReplyVo;

public interface MemberService {

	
	/* ȸ���������� ���� */
	void selectAll(Model model) throws Exception;

	void selectOne(Model model, int mnum) throws Exception;
	
	void memberAdd(MemberVo bean) throws Exception;
	

	/* �ֵ����ü��� */
	String hotDealAdd(HotDealVo bean,MultipartFile file,HttpServletRequest req) throws Exception;
 
 	void hotDealAll(Model model) throws Exception;
	
 	
	/* Ŭ������ ���� */
	void clipList(Model model) throws Exception;
	
	String login(LoginVo bean) throws Exception;

	String loginKakao(LoginVo bean) throws Exception;
	
	/* DPG ���� ����*/
	String dpgAdd(DpgVo bean,MultipartFile file,HttpServletRequest req) throws Exception;
	void dpgDelete(DpgVo bean)throws Exception;
	void dpgUpdate(DpgVo bean,MultipartFile file,HttpServletRequest req)throws Exception;
	void dpgShow(Model model,String viewType,int startNum) throws Exception;
	void dpgMain(Model model) throws Exception;
 	void dpgEx(Model model,int startNum) throws Exception;
 	void dpgNone(Model model,int startNum) throws Exception;
 	/*��� ����*/
 	List<ReplyVo> replyCall( int fatherContentsNum, HttpServletResponse resp) throws Exception;

	void dpgOne(Model model, int dpgNum) throws Exception;
}