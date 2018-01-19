package com.bit.daNaOutlet;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.bit.daNaOutlet.model.entity.DpgVo;
import com.bit.daNaOutlet.model.entity.ReplyVo;
import com.bit.daNaOutlet.service.MemberService;

/*dpg 뎁스 정리

			/dpg - dpgMain.jsp
			/dpg/board - board.jsp 제작예정(일반게시판)
			/dpg/board/1 - selectOne.jsp 1개 선택
			/dpg/review - review.jsp 제작예정(리뷰게시판)
			/dpg/review/1 - selectOneReview.jsp 1개 선택(제작중)

*/
@Controller
public class DpgController {
	@Autowired
	MemberService memberService;

	// 여기서부터 dpg ../게시판 메인
	@RequestMapping(value = "/dpg", method = RequestMethod.GET)
	public String dpgMain(Model model) throws Exception {
		memberService.dpgMain(model);
		
		return "dpg/dpgMain";
	}
	
	//보드 - 사진이 없는게시판
	@RequestMapping(value = "/dpg/board", method = RequestMethod.GET)
	public String board(Model model) throws Exception {				
		return "dpg/board";
	}

	@RequestMapping(value = "/dpg/board/{dpgNum}", method = RequestMethod.GET)
	public String boardDetail(Model model, @PathVariable int dpgNum) throws Exception {
		memberService.dpgOne(model, dpgNum);
		return "dpg/selectOne";
	}
/*
	@RequestMapping(value = "/dpg/test", method = RequestMethod.GET)
	public String dpgUpView() throws Exception {
		return "dpg/dpgtest";
	}

	@RequestMapping(value = "/dpg/test", method = RequestMethod.POST)
	public String dpgUp(@ModelAttribute DpgVo bean, @RequestParam("file") MultipartFile file, HttpServletRequest req)
			throws Exception {
		memberService.dpgAdd(bean, file, req);
		return "dpg/success";
	}*/

	
	//리뷰 - 사진 있는 게시판
	@RequestMapping(value = "/dpg/review", method = RequestMethod.GET)
	public String review(@PathVariable("num") int idx) throws Exception {
		return "dpg/review";
	}	
	
	@RequestMapping(value = "/dpg/review/{num}", method = RequestMethod.GET)
	public String reviewDetail(@PathVariable("num") int idx) throws Exception {
		return "dpg/selectOneReview";
	}

	// ajax로 댓글 정보 불러오기
	@RequestMapping(value = "/replyCall", method = RequestMethod.GET)
	public void dpgReply(HttpServletResponse resp, Model model, @RequestParam("num") int fatherContentsNum)
			throws Exception {
		memberService.replyCall(fatherContentsNum, resp);		
	}
	// ajax로 댓글 쓰기
	@RequestMapping(value="/replyAdd", method=RequestMethod.POST)
	public void dpgReplyAdd(HttpServletRequest req, @ModelAttribute ReplyVo bean, MultipartFile file)
			throws Exception {
		memberService.replyAdd(bean, file, req);
	}
	
}
