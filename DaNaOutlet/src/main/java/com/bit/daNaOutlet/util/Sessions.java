package com.bit.daNaOutlet.util;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.http.HttpRequest;

import com.bit.daNaOutlet.model.entity.KaKaoMemberVo;
import com.bit.daNaOutlet.model.entity.MemberVo;

public class Sessions {

	HttpSession session;
	 
	 public void setSession(KaKaoMemberVo bean, HttpServletRequest req) {
		 session=req.getSession();
		 bean.setLoginFrom("카카오회원");
		 session.setAttribute("loginInfo", bean);
		 session.setAttribute("loginChk", "true");

	 }
	 public void setSession(MemberVo bean, HttpServletRequest req) {
		 session=req.getSession();
		 bean.setLoginFrom("다나와회원");
		 session.setAttribute("loginInfo", bean);
		 session.setAttribute("loginChk", "true");
		 
	 }
	 public boolean cancleSession(HttpServletRequest req) {	
		 session=req.getSession();		
		 session.removeAttribute("loginChk");		 
		 session.removeAttribute("logInfo");
		 return true;
	 }
	 
	 public boolean sessionChk(HttpServletRequest req) {		 
		 if(session.getAttribute("loginChk")==null) {
			 return false;
		 };
		 return true;		 
	 }
	 
	
}