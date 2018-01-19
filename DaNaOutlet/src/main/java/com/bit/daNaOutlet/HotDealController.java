package com.bit.daNaOutlet;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.bit.daNaOutlet.model.entity.HotDealVo;
import com.bit.daNaOutlet.service.MemberService;

@Controller
public class HotDealController {
	@Autowired
	MemberService memberService;
	
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
}
