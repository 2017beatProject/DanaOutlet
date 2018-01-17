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
	/* �ֵ����ü��� */
	String dpgAdd(DpgVo bean,MultipartFile file,HttpServletRequest req) throws Exception;
 
 	void dpgAll(Model model) throws Exception;
}