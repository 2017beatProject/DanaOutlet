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
   
   @RequestMapping(value = "/test", method = RequestMethod.GET)
   public String test() throws Exception {
      return "dpg/edit";
   }
   
   @RequestMapping(value="/dpg/test",method=RequestMethod.POST)
	public String dpgUp(@ModelAttribute DpgVo bean,@RequestParam("file") MultipartFile file,HttpServletRequest req) throws Exception {
		memberService.dpgAdd(bean,file,req);
		return "dpg/success";
	}
   // 댓글test
   @RequestMapping(value = "/replyCall", method = RequestMethod.GET)
   public void dpgReplyTest(HttpServletResponse resp, Model model, @RequestParam("num") int fatherContentsNum)
         throws Exception {
      memberService.replyCall(fatherContentsNum, resp);
   }
   
   
   // 임시 확인 디테일
	@RequestMapping(value = "/con-detail", method = RequestMethod.GET)
	public String conDetail(Model model) throws Exception {

		memberService.selectAll(model);
		return "con-detail";
	}
}



