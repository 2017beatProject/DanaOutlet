package com.bit.daNaOutlet.service;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.ui.Model;
import org.springframework.web.multipart.MultipartFile;

import com.bit.daNaOutlet.model.MemberDao;
import com.bit.daNaOutlet.model.entity.DpgVo;
import com.bit.daNaOutlet.model.entity.HotDealVo;
import com.bit.daNaOutlet.model.entity.LoginVo;
import com.bit.daNaOutlet.model.entity.MemberVo;
import com.bit.daNaOutlet.util.Commons;

@Component
public class MemberServiceImpl implements MemberService {
	@Autowired
	MemberDao dao;
	
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
	public String login(LoginVo bean) throws Exception {		
				
				System.out.println("��ȸ���� ���ΰ�?"+dao.login(bean));
		if(dao.login(bean)>0) {
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

		String rootPath="\\dpgimgs\\";
 		Commons comUp = new Commons();
 		bean.setDpgCount(0);
 		bean.setDpgImgLink(comUp.commonsDpgUp(bean.getDpgWriter(),rootPath ,file,req));
 		bean.setDpgNum(dao.dpgNumOne());
 		dao.dpgAdd(bean);
 		return "success";		 		 		
	}

	@Override
	public void dpgAll(Model model) throws Exception {
		model.addAttribute("list",dao.dpgAll());
	}

}