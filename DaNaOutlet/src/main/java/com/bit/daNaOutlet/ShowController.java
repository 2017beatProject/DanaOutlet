package com.bit.daNaOutlet;



import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;



import com.bit.daNaOutlet.service.MemberService;



@Controller
public class ShowController {
	@Autowired
	MemberService memberService;
	
	//����ȭ��
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Model model) throws Exception {

		memberService.selectAll(model);
		return "main";
	}
	
	@RequestMapping(value = "/search", method = RequestMethod.GET)
	public String search(Model model) throws Exception {
		memberService.selectAll(model);
		return "search";
	}

	//�α���ȭ��
	@RequestMapping(value="/login",method=RequestMethod.GET)
	public String login() {
		
		return "login/login";
	}	
	//Ŭ�� ����
	@RequestMapping(value="/clip/",method=RequestMethod.GET)
	public String clipList(Model model) throws Exception {
		memberService.clipList(model);
		return "clip/main";
	}
	
	// ���ø�
	@RequestMapping(value = "/template/navigation", method = RequestMethod.GET)
	public String nav() throws Exception {
		return "template/navigation";
	}
}