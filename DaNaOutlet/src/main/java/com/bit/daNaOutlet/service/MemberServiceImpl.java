package com.bit.daNaOutlet.service;

import java.io.PrintWriter;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.ui.Model;
import org.springframework.web.multipart.MultipartFile;

import com.bit.daNaOutlet.model.MemberDao;
import com.bit.daNaOutlet.model.entity.DpgVo;
import com.bit.daNaOutlet.model.entity.HotDealVo;
import com.bit.daNaOutlet.model.entity.LoginVo;
import com.bit.daNaOutlet.model.entity.MemberVo;
import com.bit.daNaOutlet.model.entity.ReplyVo;
import com.bit.daNaOutlet.util.Commons;
import com.bit.daNaOutlet.util.Sessions;

@Component
public class MemberServiceImpl implements MemberService {
	Logger log;
	@Autowired	
	MemberDao dao;	
	Sessions sessions;
	HttpSession session;
	PrintWriter out;
	public MemberServiceImpl() {
		log=Logger.getLogger(MemberServiceImpl.class.getName());
	}
	
	@Override
	public void selectAll(Model model) throws Exception {
		model.addAttribute("list",dao.selectAll());
	}

	@Override
	public void selectOne(Model model, int mnum) throws Exception {
		model.addAttribute("bean",dao.selectOne(mnum));
		
	}
	
	@Override
	public void memberAdd(MemberVo bean) throws Exception {
		bean.setMnum(dao.mNumOne()); // 번호는 bean 담아있지않아서 dao에서 맥스값+1한 값을 set함 
		dao.memberAdd(bean);	
	}
	
	//핫딜 서비스
	
	@Override
 	public String hotDealAdd(HotDealVo bean,MultipartFile file,HttpServletRequest req) throws Exception {
 		if(10<=dao.hotDealCount()) { // db에 저장값이 10개이상이면 밑에 수행안하구 리턴
 			return "failed";
 		}
		String rootPath="\\hotdealimgs\\";
 		Commons comUp = new Commons();
 		// imgs/hotdealimgs 에다가 파일업로드 및 리턴타입 String 으로 저장할 이름값 리턴
 		bean.setProductName(comUp.commonsUp(bean.getProductName(),rootPath ,file,req)); 
 		bean.setHotDealNum(dao.hotDealNumOne());
 		dao.hotDealAdd(bean); // db에 파일 정보 저장
 		return "success";
 	}
 
 	@Override
 	public void hotDealAll(Model model) throws Exception {
 		model.addAttribute("list",dao.hotDealAll());
 	}
 	

	//클립 보여주기
	@Override
	public void clipList(Model model) throws Exception {		
		model.addAttribute("clipList",dao.clipList());
		
	}

	@Override
	public String login(LoginVo bean, HttpServletRequest req) throws Exception {		
				
		if(dao.login(bean)>0) {			
			
			sessions.setSession(bean, req);
			
		return "로그인확인";		
		}else {
			return "로그인실패";
		}
	}

	@Override
	public String loginKakao(LoginVo bean, HttpServletRequest req) throws Exception {
		bean.setIdKakaoLog(dao.kakolognum());
		sessions.setSession(bean, req);
		if(dao.loginKakao(bean)>0) return "로그인확인";		
		return "로그인실패";
	}

	/* DPG 관련 */
	@Override
	public String dpgAdd(DpgVo bean, MultipartFile file, HttpServletRequest req) throws Exception {
		Commons comUp = new Commons();
		String rootPath="\\dpgimgs\\";
 		String ImgLink=comUp.commonsDpgUp(bean.getDpgWriter(),rootPath ,file,req);
// 		bean.setDpgCount(0);
 		if(!(ImgLink==null))bean.setDpgImgLink(ImgLink);
 		bean.setDpgNum(dao.dpgNumOne());
 		dao.dpgAdd(bean);
 		return "success";		 		 		
	}
	
	@Override
	public void dpgShow(Model model, String viewType,int startNum) throws Exception {

		if(viewType.equals("main")) dpgMain(model);
		else if(viewType.equals("ex")) dpgEx(model,startNum);
		else if(viewType.equals("none")) dpgNone(model,startNum);
	}
	
	@Override
	public void dpgMain(Model model) throws Exception {
			model.addAttribute("imgList",dao.dpgImgLinkListDesc());
			model.addAttribute("list",dao.dpgNoneLinkListDesc());
			model.addAttribute("adminList",dao.dpgAdminList());
			model.addAttribute("bestList",dao.dpgBestList());
			model.addAttribute("bestNoneList",dao.dpgBestNoneList());
	}
	@Override
	public void dpgEx(Model model,int startNum) throws Exception {
		model.addAttribute("imgList",dao.dpgImgLinkListAsc(startNum));
		model.addAttribute("count",(dao.dpgImgCount()));
		model.addAttribute("startNum",startNum);
	}
	@Override
	public void dpgNone(Model model,int startNum) throws Exception {
		model.addAttribute("list",dao.dpgNoneLinkListAsc(startNum));
		model.addAttribute("count",(dao.dpgNoneCount()));
		model.addAttribute("startNum",startNum);
	}
	
	@Override
	public void dpgOne(Model model, int dpgNum) throws Exception {
		model.addAttribute("bean", dao.dpgOne(dpgNum));
	}

	/* 댓글 서비스*/	
	@Override
	public List<ReplyVo> replyCall(int fatherContentsNum, HttpServletResponse resp) throws Exception {
				
		
	log.debug(dao.replyCall(fatherContentsNum).toString());	
	
	List<ReplyVo> list=dao.replyCall(fatherContentsNum);
		/*	
		 * json 확인용 logger
		 * 		System.out.print("{\"list\":[");
					for(int i=0;i<list.size();i++) {
						System.out.print("{\"log\":\""+list.get(i).getFatherContentsNum()+"\","
								+ "\"id\":\""+list.get(i).getReplyId()+"\","
								+ "\"contents\":\""+list.get(i).getReplyContent()+"\","
								+ "\"nalja\":\""+list.get(i).getReplyDate()+"\","
								+ "\"depth\":\""+list.get(i).getReplyDepth()+"\","
								+ "\"conId\":\""+list.get(i).getReplyConId()+"\","
								+ "\"fatherNum\":\""+list.get(i).getFatherContentsNum()+"\"}");
					if(i!=list.size()-1) {System.out.print(",");}
							
					}
					System.out.print("]}");*/
					resp.setContentType("text/json");
					resp.setCharacterEncoding("UTF-8");
					out=resp.getWriter();
					out.print("{\"list\":[");
					for(int i=0;i<list.size();i++) {
					out.print("{\"log\":\""+list.get(i).getFatherContentsNum()+"\","
							+ "\"id\":\""+list.get(i).getReplyId()+"\","
							+ "\"contents\":\""+list.get(i).getReplyContent()+"\","
							+ "\"nalja\":\""+list.get(i).getReplyDate()+"\","
							+ "\"depth\":\""+list.get(i).getReplyDepth()+"\","
							+ "\"conId\":\""+list.get(i).getReplyConId()+"\","
							+ "\"fatherNum\":\""+list.get(i).getFatherContentsNum()+"\"}");
					if(i!=list.size()-1) {out.print(",");}
							
					}
					out.print("]}");		
		return null;
	}
	@Override
	public void dpgDelete(DpgVo bean) throws Exception {
		dao.dpgDelete(bean);
		
	}
	@Override
	public void dpgUpdate(DpgVo bean, MultipartFile file, HttpServletRequest req) throws Exception {
		Commons comUp = new Commons();
		String rootPath="\\dpgimgs\\";
 		String ImgLink=comUp.commonsDpgUp(bean.getDpgWriter(),rootPath ,file,req);
 		if(!(ImgLink==null))bean.setDpgImgLink(ImgLink);
 		bean.setDpgNum(dao.dpgNumOne());
 		dao.dpgUpdate(bean);
	}

	@Override
	public void replyAdd(ReplyVo bean, MultipartFile file, HttpServletRequest req) throws Exception {
		String rootPath="\\replyImgs\\";
 		Commons comUp = new Commons(); 		
 		String imgLink=comUp.commonsReplyUp(bean.getReplyId(), rootPath, file, req);
 		if(!(imgLink==null))bean.setReplyImgsLink(imgLink);
 		bean.setReplyLog(dao.replyNumOne());
 		dao.replyAdd(bean); 	
	}

	@Override
	public String logout(HttpServletRequest req) throws Exception {
		if(sessions.cancleSession(req))return "로그아웃성공";
		return "로그아웃실패";
	}

	@Override
	public String loginChk(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		if(sessions.sessionChk(req))return "로그인하고 있음";
		resp.setCharacterEncoding("UTF-8");	
		out=resp.getWriter();
		out.print(sessions.sessionChk(req));
		return "로그인안하고있음";
	}

	@Override
	public boolean idDoubleChk(String chkId, HttpServletRequest req, HttpServletResponse resp) throws Exception {
		out=resp.getWriter();
		
		if(dao.idDoubleChk(chkId)>0) {
			out.print("true");
			return true;
		}//if
		
		out.print("false");
		return false;
	}
}