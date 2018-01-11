package com.bit.daNaOutlet.service;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.ui.Model;

import com.bit.daNaOutlet.model.MemberDao;
import com.bit.daNaOutlet.model.entity.MemberVo;

public class MemberServiceImpl implements MemberService {

	@Override
	public void selectAll(SqlSession sqlSession, Model model) {
		
		MemberDao dao=sqlSession.getMapper(MemberDao.class);
		try {
			model.addAttribute("list",dao.selectAll());
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
