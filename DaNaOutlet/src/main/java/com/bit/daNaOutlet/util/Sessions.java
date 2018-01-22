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
		 if(bean.getNickName()!=null)session.setAttribute("loginInfo", bean.getNickName());
		 else session.setAttribute("loginInfo", bean.getLoginId());
		 session.setAttribute("loginChk", "true");
		 return true;
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