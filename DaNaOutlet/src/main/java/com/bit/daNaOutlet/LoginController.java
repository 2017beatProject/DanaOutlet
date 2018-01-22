package com.bit.daNaOutlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.bit.daNaOutlet.model.entity.LoginVo;
import com.bit.daNaOutlet.service.MemberService;
import com.bit.daNaOutlet.util.Sessions;

@Controller
public class LoginController {

	@Autowired
	MemberService memberService;
	Logger log;

	public LoginController() {
		log = Logger.getLogger(this.getClass().getName());
	}

	// 로그인으로 아이디 비번 체크
	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public void loginChk(HttpServletResponse resp, HttpServletRequest req, @ModelAttribute LoginVo bean)
			throws Exception {
		resp.setCharacterEncoding("UTF-8");
		PrintWriter out = resp.getWriter();
		out.print(memberService.login(bean, req));
	}

	// 카카오톡으로 로그인
	@RequestMapping(value = "/loginKakao", method = RequestMethod.POST)
	public void loginKakao(HttpServletResponse resp, HttpServletRequest req, @ModelAttribute LoginVo bean)
			throws Exception {
		resp.setCharacterEncoding("UTF-8");
		System.out.println("카카오아이디:" + bean.getLoginId());
		System.out.println("카카오아이디:" + bean.getNickName());
		PrintWriter out = resp.getWriter();
		out.print(memberService.loginKakao(bean, req));
	}

	// 로그아웃
	@RequestMapping(value = "/logout", method = RequestMethod.POST)
	public void logout(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		resp.setCharacterEncoding("UTF-8");
		PrintWriter out = resp.getWriter();
		out.print(memberService.logout(req));

	}

	// 로그인상태 호출
	@RequestMapping(value = "/loginChk", method = RequestMethod.POST)
	public void loginChk(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		log.debug(memberService.loginChk(req, resp));
	}

	//아이디중복검사
	@RequestMapping(value="/idDoubleChk", method=RequestMethod.POST)
	public void idDoubleChk(@RequestParam String chkId, HttpServletRequest req, HttpServletResponse resp) throws Exception {
		log.debug(memberService.idDoubleChk(chkId, req, resp ));
		
	}
	
}