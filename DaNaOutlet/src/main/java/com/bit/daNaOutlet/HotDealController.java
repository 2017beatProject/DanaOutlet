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
	
	// 김성식 파일업로드 page view 
 	@RequestMapping(value = "/upload", method = RequestMethod.GET)
 	public String uploadView(HttpServletRequest req) throws Exception {
 		return "hotdeal/upload";
 	}
 	// 파일 업로드 Insert 부분
 	@RequestMapping(value = "/upload", method = RequestMethod.POST)
 	public String upload(@ModelAttribute HotDealVo bean,@RequestParam("file") MultipartFile file,HttpServletRequest req) throws Exception {
 		String result=memberService.hotDealAdd(bean,file,req);	// reulst 리턴값에 따라 success.jsp 또는 failed.jsp 페이지 보여줌
 		return "hotdeal/"+result;
 	}
 	// 업로드한 파일 보여주는 view
 	@RequestMapping(value = "/hotdeal", method = RequestMethod.GET)
 	public String hotDeal(Model model) throws Exception {
 		memberService.hotDealAll(model);
 		return "hotdeal/hotdeal";
 	}
}
