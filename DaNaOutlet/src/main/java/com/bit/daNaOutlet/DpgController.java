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

@Controller
public class DpgController {
	@Autowired
	MemberService memberService;
	
//  여기서부터 dpg ../게시판 메인
   @RequestMapping(value = "/dpg", method = RequestMethod.GET)
   public String dpgMain(Model model,@RequestParam int startNum) throws Exception {
	  memberService.dpgShow(model,new String("main") ,startNum );
      return "dpg/dpgMain";
   }
	
   //보드 - 사진이 없는게시판
   @RequestMapping(value = "/dpg/board", method = RequestMethod.GET)
   public String board(Model model,@RequestParam int startNum) throws Exception {            
	  memberService.dpgShow(model, new String("none") , startNum);
	  return "dpg/board";
   }

   @RequestMapping(value = "/dpg/board/{dpgNum}", method = RequestMethod.GET)
   public String boardDetail(Model model, @PathVariable int dpgNum) throws Exception {
      memberService.dpgOne(model, dpgNum);
      return "dpg/selectOne";
   }
   @RequestMapping(value = "/dpg/board/input", method = RequestMethod.GET)
   public String boardInput(Model model) throws Exception {
      return "dpg/boardInput";
   }
   @RequestMapping(value = "/dpg/board/update/{dpgNum}", method = RequestMethod.GET)
   public String boardUpdate(Model model, @PathVariable int dpgNum) throws Exception {
      memberService.dpgOne(model, dpgNum);
      return "dpg/boardInput";
   }
	
	
   //리뷰 - 사진 있는 게시판
   @RequestMapping(value = "/dpg/review", method = RequestMethod.GET)
   public String review(Model model,@RequestParam int startNum) throws Exception {
	  memberService.dpgShow(model, new String("ex") , startNum);
	  return "dpg/review";
   }   
   
   @RequestMapping(value = "/dpg/review/{dpgNum}", method = RequestMethod.GET)
   public String reviewDetail(Model model,@PathVariable int dpgNum) throws Exception {
	   memberService.dpgOne(model, dpgNum);
	  return "dpg/selectOneReview";
   }
   @RequestMapping(value = "/dpg/review/input", method = RequestMethod.GET)
   public String reviewInput(Model model) throws Exception {
	  return "dpg/reviewInput";
   }
   @RequestMapping(value = "/dpg/review/update/{dpgNum}", method = RequestMethod.POST)
   public String reviewUpdate(Model model) throws Exception {
	  return "dpg/reviewInput";
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



