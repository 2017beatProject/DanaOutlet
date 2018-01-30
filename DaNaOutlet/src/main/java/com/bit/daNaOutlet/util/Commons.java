package com.bit.daNaOutlet.util;

import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

public class Commons {
	// �׸� ���� ���ε��Ҷ� ��ο� ���� �̸����̱�

	public String commonsUp(String productName, String rootPath, MultipartFile file, HttpServletRequest req)
			throws Exception {
		return module(productName, rootPath, file, req);
	}

	public String commonsDpgUp(String id, String rootPath, MultipartFile file, HttpServletRequest req)
			throws IllegalStateException, IOException {
		return module(id, rootPath, file, req);
	}

	// ��� �׸� ���ε�
	public String commonsReplyUp(String id, String rootPath, MultipartFile file, HttpServletRequest req)
			throws IllegalStateException, IOException {
		return module(id, rootPath, file, req);
	}

	public String module(String id, String rootPath, MultipartFile file, HttpServletRequest req)
			throws IllegalStateException, IOException {
		req.setCharacterEncoding("UTF-8");
		ServletContext context = req.getSession().getServletContext();
		String realPath = context.getRealPath("/");
		String path = realPath + "\\resources\\imgs" + rootPath;		
		String srcPath = "C:\\Users\\hb\\Desktop\\imgs" + rootPath;
		
		if (!file.isEmpty()) {	
			String orginalName = file.getOriginalFilename();
			int pos = orginalName.lastIndexOf(".");
			String suffix = orginalName.substring(pos);
				File realF = new File(path + dTime() + id + suffix);
				File srcF = new File(srcPath + dTime() + id + suffix);
				file.transferTo(realF);
				file.transferTo(srcF);
				return dTime() + id + suffix;		
		} // null validation
		return null;
	}

	public String dTime() {
		SimpleDateFormat formatter = new SimpleDateFormat("yyyyMMdd~HHmmss", Locale.KOREA);
		Date currentTime = new Date();
		return (String) formatter.format(currentTime).trim();
	}
}