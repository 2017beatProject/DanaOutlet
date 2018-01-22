package com.bit.daNaOutlet;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.bit.daNaOutlet.model.entity.DpgVo;
import com.bit.daNaOutlet.model.entity.HotDealVo;
import com.bit.daNaOutlet.model.entity.MemberVo;
import com.bit.daNaOutlet.service.MemberService;
import com.bit.daNaOutlet.util.Commons;

@Controller
public class ShowController {
	@Autowired
	MemberService memberService;
	
	//메인화면
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(HttpServletRequest req) throws Exception {	
		
		return "main";
	}
	
	@RequestMapping(value = "/search", method = RequestMethod.GET)
	public String search(Model model) throws Exception {
		memberService.selectAll(model);
		return "search";
	}

	//회원가입
	@RequestMapping(value="/join",method = RequestMethod.GET)
	public String join() {
		
		return "join";
	}
	//로그인화면
	@RequestMapping(value="/login",method=RequestMethod.GET)
	public String login() {
		
		return "login/login";
	}	
	//클립 메인
	@RequestMapping(value="/clip/",method=RequestMethod.GET)
	public String clipList(Model model) throws Exception {
		memberService.clipList(model);
		return "clip/main";
	}
}