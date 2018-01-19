package com.bit.daNaOutlet.service;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.mail.Session;
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
	
	public MemberServiceImpl() {
		log=Logger.getLogger(MemberServiceImpl.class.getName());
		sessions=new Sessions();
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
		bean.setMnum(dao.mNumOne()); // ��ȣ�� bean ��������ʾƼ� dao���� �ƽ���+1�� ���� set�� 
		dao.memberAdd(bean);	
	}
	
	//�ֵ� ����
	
	@Override
 	public String hotDealAdd(HotDealVo bean,MultipartFile file,HttpServletRequest req) throws Exception {
		if(10<=dao.hotDealCount()) { // db�� ���尪�� 10���̻��̸� �ؿ� ������ϱ� ����
 			return "failed";
 		}
		String rootPath="\\hotdealimgs\\";
 		Commons comUp = new Commons();
 		// imgs/hotdealimgs ���ٰ� ���Ͼ��ε� �� ����Ÿ�� String ���� ������ �̸��� ����
 		bean.setProductName(comUp.commonsUp(bean.getProductName(),rootPath ,file,req)); 
 		bean.setHotDealNum(dao.hotDealNumOne());
 		dao.hotDealAdd(bean); // db�� ���� ���� ����
 		return "success";
 	}
 
 	@Override
 	public void hotDealAll(Model model) throws Exception {
 		model.addAttribute("list",dao.hotDealAll());
 	}
 	

	//Ŭ�� �����ֱ�
	@Override
	public void clipList(Model model) throws Exception {		
		model.addAttribute("clipList",dao.clipList());
		
	}

	@Override
	public String login(LoginVo bean, HttpServletRequest req) throws Exception {		
				
				System.out.println("��ȸ���� ���ΰ�?"+dao.login(bean));
				
		if(dao.login(bean)>0) {			
			
			System.out.println(req);
			sessions.setSession(bean, req);
			
		return "�α���Ȯ��";		
		}else {
			return "�α��ν���";
		}
	}

	@Override
	public String loginKakao(LoginVo bean) throws Exception {
		bean.setIdKakaoLog(dao.kakolognum());
		if(dao.loginKakao(bean)>0) {return "�α���Ȯ��";}
		
		return "�α��ν���";
	}
	
	/* DPG ���� */
	@Override
	public String dpgAdd(DpgVo bean, MultipartFile file, HttpServletRequest req) throws Exception {

		Commons comUp = new Commons();
	      String rootPath="\\dpgimgs\\";
	       String ImgLink=comUp.commonsDpgUp(bean.getDpgWriter(),rootPath ,file,req);
//	       bean.setDpgCount(0);
	       if(!(ImgLink==null))bean.setDpgImgLink(ImgLink);
	       bean.setDpgNum(dao.dpgNumOne());
	       dao.dpgAdd(bean);
	       return "success";		 		
	}


	   @Override
	   public void dpgMain(Model model) throws Exception {
	      model.addAttribute("adminList",dao.dpgAdminList());
	      model.addAttribute("bestList",dao.dpgBestList());
	      model.addAttribute("imgList",dao.dpgImgLinkList());
	      model.addAttribute("list",dao.dpgNoneLinkList());
	   }
	
	@Override
	public void dpgOne(Model model, int dpgNum) throws Exception {
		model.addAttribute("bean", dao.dpgOne(dpgNum));
	}

	/* ��� ����*/	
	@Override
	public List<ReplyVo> replyCall(int fatherContentsNum, HttpServletResponse resp) throws Exception {
				
		log.debug(dao.replyCall(fatherContentsNum).toString());	
		
		List<ReplyVo> list=dao.replyCall(fatherContentsNum);
		/*	
		 * json Ȯ�ο� logger
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
					PrintWriter out=resp.getWriter();
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
	public void replyAdd(ReplyVo bean, MultipartFile file, HttpServletRequest req) throws Exception {
		String rootPath="\\replyImgs\\";
 		Commons comUp = new Commons(); 		
 		String imgLink=comUp.commonsReplyUp(bean.getReplyId(), rootPath, file, req);
 		if(!(imgLink==null))bean.setReplyImgsLink(imgLink);
 		bean.setReplyLog(dao.replyNumOne());
 		dao.replyAdd(bean); 	
 		
	}

	
}