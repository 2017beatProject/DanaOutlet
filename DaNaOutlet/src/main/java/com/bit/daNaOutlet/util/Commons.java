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
 
 	
	
	 
 	public String commonsUp(String productName,String rootPath,MultipartFile file,HttpServletRequest req) throws Exception {		
		return module(productName, rootPath, file, req);
 	}
 	public String commonsDpgUp(String id,String rootPath,MultipartFile file,HttpServletRequest req) throws IllegalStateException, IOException {
 		return module(id, rootPath, file, req);
 	}
 	public String module(String id,String rootPath, MultipartFile file,HttpServletRequest req) throws IllegalStateException, IOException {
		if(file.isEmpty()) {
			
		}
 		req.setCharacterEncoding("UTF-8");
 		ServletContext context =req.getSession().getServletContext();
 		String realPath=context.getRealPath("/");				
 		String path=realPath+"\\resources\\imgs"+rootPath;
		String srcPath="C:\\Users\\1027\\git\\DanaOutlet\\DaNaOutlet\\src\\main\\webapp\\resources\\imgs"+rootPath;
 	
 		if(!file.isEmpty()) {
 			String orginalName=file.getOriginalFilename();
 	 		int pos = orginalName.lastIndexOf( "." );
 	 		String ext = orginalName.substring( pos );
	 		if(rootPath.equals("\\hotdealimgs\\")) {
	 			File realF=new File(path+id+ext);
	 	 		File srcF=new File(srcPath+id+ext);
	 	 		file.transferTo(realF);	
	 	 		file.transferTo(srcF);
	 	 		return id+ext;
	 		}else if(rootPath.equals("\\dpgimgs\\")) {
	 			File realF=new File(path+dTime()+id+ext);
	 	 		File srcF=new File(srcPath+dTime()+id+ext);
	 	 		file.transferTo(realF);	
	 	 		file.transferTo(srcF);
	 	 		return dTime()+id+ext;
	 		}
	 		return null;
 		}
 		return null;
	}
 	public String dTime() {
 		SimpleDateFormat formatter= new SimpleDateFormat("yyyyMMdd~HHmmss",Locale.KOREA);
		Date currentTime = new Date();
 		return (String) formatter.format(currentTime).trim();
 	}
 } 