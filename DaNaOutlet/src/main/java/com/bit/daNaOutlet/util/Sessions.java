package com.bit.daNaOutlet.util;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.http.HttpRequest;

import com.bit.daNaOutlet.model.entity.LoginVo;
import com.bit.daNaOutlet.model.entity.MemberVo;

public class Sessions {

	HttpSession session;
	
	 
	 public boolean setSession(LoginVo bean, HttpServletRequest req) {		
		 session=req.getSession();
		 session.setAttribute("loginChk", bean);		
		 return true;
	 }
	 
	 public boolean cancleSession() {		
		 session.removeAttribute("loginChk");		 
		 return true;
	 }
	 
	 public boolean seesionChk() {	
		 if(session.getAttribute("loginChk").equals(null)) {
			 return false;
		 };
		 return true;		 
	 }
	 
	
}
