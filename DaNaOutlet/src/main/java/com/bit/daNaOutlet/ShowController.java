package com.bit.daNaOutlet;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.bit.daNaOutlet.model.entity.HotDealVo;
import com.bit.daNaOutlet.model.entity.MemberVo;
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
	
	// �Խ��� ����
	@RequestMapping(value = "/board", method = RequestMethod.GET)
	public String board(Model model) throws Exception {

		memberService.selectAll(model);
		return "board/board";
	}
	
	// �Խ���(�ӽ÷� ���ص�)
	@RequestMapping(value = "/board/detail", method = RequestMethod.GET)
	public String boardDetail(Model model) throws Exception {

		memberService.selectAll(model);
		return "board/detail";
	}
	
	// �Խ���(�ӽ÷� ���ص�)
		@RequestMapping(value = "/board/selectOne", method = RequestMethod.GET)
		public String boardSelectOne(Model model) throws Exception {

			memberService.selectAll(model);
			return "board/selectOne";
	}
	
	//ȸ������
	@RequestMapping(value="/join",method = RequestMethod.GET)
	public String join() {
		
		return "join";
	}
	//�α���ȭ��
	@RequestMapping(value="/login",method=RequestMethod.GET)
	public String login() {
		
		return "login/login";
	}
	
	//ȸ������
	@RequestMapping(value="/member", method=RequestMethod.GET)
	public String memberList(Model model) throws Exception {

		memberService.selectAll(model);
		return "member/memberView";
	}
	
	//ȸ�����νŻ���ȸ
	@RequestMapping(value="/member/{mnum}", method=RequestMethod.GET)
	public String memberOne(@PathVariable("mnum") int mnum, Model model) throws Exception {
		memberService.selectOne(model , mnum);

		return "member/memberOne";
	}
	
	@RequestMapping(value="/join",method = RequestMethod.POST) // ȸ�� ���� �κ� 
	public String joinSuccess(@ModelAttribute MemberVo bean) throws Exception {
		memberService.memberAdd(bean);		
		return "member/success";
	}
	
	// �輺�� ���Ͼ��ε� page view 
	 	@RequestMapping(value = "/upload", method = RequestMethod.GET)
	 	public String uploadView(HttpServletRequest req) throws Exception {
	 		return "hotdeal/upload";
	 	}
	 	// ���� ���ε� Insert �κ�
	 	@RequestMapping(value = "/upload", method = RequestMethod.POST)
	 	public String upload(@ModelAttribute HotDealVo bean,@RequestParam("file") MultipartFile file,HttpServletRequest req) throws Exception {
	 		String result=memberService.hotDealAdd(bean,file,req);	// reulst ���ϰ��� ���� success.jsp �Ǵ� failed.jsp ������ ������
	 		return "hotdeal/"+result;
	 	}
	 	// ���ε��� ���� �����ִ� view
	 	@RequestMapping(value = "/hotdeal", method = RequestMethod.GET)
	 	public String hotDeal(Model model) throws Exception {
	 		memberService.hotDealAll(model);
	 		return "hotdeal/hotdeal";
	 	}
	
	
	
	//Ŭ�� ����
	@RequestMapping(value="/clip/",method=RequestMethod.GET)
	public String clipList(Model model) throws Exception {
		memberService.clipList(model);
		return "clip/main";
	}
	
}