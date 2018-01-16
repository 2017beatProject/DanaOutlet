package com.bit.daNaOutlet.service;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.springframework.ui.Model;
import org.springframework.web.multipart.MultipartFile;

import com.bit.daNaOutlet.model.entity.HotDealVo;
import com.bit.daNaOutlet.model.entity.LoginVo;
import com.bit.daNaOutlet.model.entity.MemberVo;

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
	
	String login(LoginVo bean) throws Exception;

	String loginKakao(LoginVo bean) throws Exception;
}