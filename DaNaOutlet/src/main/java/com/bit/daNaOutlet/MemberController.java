package com.bit.daNaOutlet;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.bit.daNaOutlet.model.entity.MemberVo;
import com.bit.daNaOutlet.service.MemberService;

@Controller
public class MemberController {
	@Autowired
	MemberService memberService;
	//회원관리
		@RequestMapping(value="/member", method=RequestMethod.GET)
		public String memberList(Model model) throws Exception {

			memberService.selectAll(model);
			return "member/memberView";
		}
		
		//회원개인신상조회
		@RequestMapping(value="/member/{mnum}", method=RequestMethod.GET)
		public String memberOne(@PathVariable("mnum") int mnum, Model model) throws Exception {
			memberService.selectOne(model , mnum);

			return "member/memberOne";
		}
		
		@RequestMapping(value="/join",method = RequestMethod.POST) // 회원 가입 부분 
		public String joinSuccess(@ModelAttribute MemberVo bean) throws Exception {
			memberService.memberAdd(bean);		
			return "member/success";
		}
}
