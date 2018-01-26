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
   @RequestMapping(value = "/dpg/delete/{dpgNum}", method = RequestMethod.DELETE)
   public void dpgDelete(@PathVariable int dpgNum, HttpServletResponse resp) throws Exception {
	  memberService.dpgDelete(dpgNum,resp);	   
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
   
   @RequestMapping(value = "/dpg/board/{dpgNum}/input", method = RequestMethod.GET)
   public String boardInputEditOne(HttpServletRequest req,Model model,@PathVariable Object dpgNum,@RequestParam("idx") int idx) throws Exception {
	   if(!(memberService.dpgUserChk(req))) return "redirect:/dpg?startNum=0";
	   memberService.dpgNoneInputEditOne(model, dpgNum, idx);
	   return "dpg/boardInput"; 
   } 
   @RequestMapping(value = "/dpg/board/{num}/input", method = RequestMethod.POST)
   public String boardUpdateInsert(HttpServletRequest req,Model model,@PathVariable Object num,@ModelAttribute DpgVo bean,@RequestParam("idx") int idx) throws Exception {	   
	 
	   memberService.dpgNoneUpdateInsert(bean, model, num, idx);
	   return "redirect:/dpg/board?startNum=0";   
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
   
   @RequestMapping(value = "/dpg/review/{dpgNum}/input", method = RequestMethod.GET)
   public String reviewInputView(HttpServletRequest req,Model model,@PathVariable Object dpgNum,@RequestParam("idx") int idx) throws Exception {
	  if(!(memberService.dpgUserChk(req))) return "redirect:/dpg?startNum=0";
	  memberService.dpgExInputEditOne(model, dpgNum, idx);
	  return "dpg/reviewInput";
   }
   @RequestMapping(value = "/dpg/review/{num}/input", method = RequestMethod.POST)
   public String reviewInput(Model model,@PathVariable Object num,@ModelAttribute DpgVo bean,@RequestParam("idx") int idx, @RequestParam("cma_file") MultipartFile file,HttpServletRequest req) throws Exception {	   
	 
	   memberService.dpgExUpdateInsert(bean, model, num, idx,file,req);
	   return "redirect:/dpg/review?startNum=0"; 
   }
    
//민건씨 버전 ajax로 불러오기는 나중에 할게요 지금은 쉽게 간단하게 할게요
// ajax로 댓글 정보 불러오기
//	@RequestMapping(value = "/replyCall", method = RequestMethod.GET)
//	public void dpgReply(HttpServletResponse resp, Model model, @RequestParam("num") int fatherContentsNum)
//			throws Exception {
//		memberService.replyCall(fatherContentsNum, resp);		
//	}
//	// ajax로 댓글 쓰기
//	@RequestMapping(value="/replyAdd", method=RequestMethod.POST)
//	public void dpgReplyAdd(HttpServletRequest req, @ModelAttribute ReplyVo bean, MultipartFile file)
//			throws Exception {
//		memberService.replyAdd(bean, file, req);
//	}
   

	@RequestMapping(value = "/replyCall", method = RequestMethod.GET)
	public void dpgReply(HttpServletResponse resp, Model model, @RequestParam("num") int fatherContentsNum)
			throws Exception {
		memberService.replyCallVer_2(fatherContentsNum, resp,model);		
	}
	// ajax로 댓글 쓰기
	@RequestMapping(value="/replyAdd", method=RequestMethod.POST)
	public String dpgReplyAdd(HttpServletRequest req, @ModelAttribute ReplyVo bean, MultipartFile file)
			throws Exception {
		memberService.replyAdd(bean, file, req);
		return "redirect:/dpg/"+bean.getFatherFrom()+"/"+bean.getFatherContentsNum();
	}
   
	 @RequestMapping(value = "/reply/delete/{replyLog}", method = RequestMethod.DELETE)
	   public void dpgReplyDelete(@PathVariable int replyLog, HttpServletResponse resp) throws Exception {
		  memberService.dpgReplyDelete(replyLog,resp);	   
	   }
}



