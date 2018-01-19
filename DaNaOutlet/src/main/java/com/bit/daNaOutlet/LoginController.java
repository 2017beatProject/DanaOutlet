package com.bit.daNaOutlet;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.bit.daNaOutlet.model.entity.LoginVo;
import com.bit.daNaOutlet.service.MemberService;

@Controller
public class LoginController {

	@Autowired
	MemberService memberService;

	// �α������� ���̵� ��� üũ
	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public void loginChk(HttpServletResponse resp, HttpServletRequest req,@ModelAttribute LoginVo bean) throws Exception {
		resp.setCharacterEncoding("UTF-8");
		PrintWriter out = resp.getWriter();
		out.print(memberService.login(bean, req));
	}

	//īī�������� �α���
	@RequestMapping(value = "/loginKakao", method = RequestMethod.POST)
	public void loginKakao(HttpServletResponse resp, @ModelAttribute LoginVo bean) throws Exception {
		resp.setCharacterEncoding("UTF-8");
		System.out.println("īī�����̵�:"+bean.getLoginId());
		System.out.println("īī�����̵�:"+bean.getNickName());
		PrintWriter out = resp.getWriter();
		out.print(memberService.loginKakao(bean));
	}
	
}
