package com.bit.daNaOutlet.model.entity;

import java.sql.Date;

public class ReplyVo {

	private int replyLog;
	private String replyNickName;
	private String replyContent;
	private Date replyDate;
	private int replyDepth;
	private String replyConId;
	private int fatherContentsNum;
	private String replyImgsLink;
	private String fatherFrom;
	
	
	public ReplyVo() {
		// TODO Auto-generated constructor stub
	}


	public int getReplyLog() {
		return replyLog;
	}


	public void setReplyLog(int replyLog) {
		this.replyLog = replyLog;
	}


	public String getReplyNickName() {
		return replyNickName;
	}


	public void setReplyNickName(String replyNickName) {
		this.replyNickName = replyNickName;
	}


	public String getReplyContent() {
		return replyContent;
	}


	public void setReplyContent(String replyContent) {
		this.replyContent = replyContent;
	}


	public Date getReplyDate() {
		return replyDate;
	}


	public void setReplyDate(Date replyDate) {
		this.replyDate = replyDate;
	}


	public int getReplyDepth() {
		return replyDepth;
	}


	public void setReplyDepth(int replyDepth) {
		this.replyDepth = replyDepth;
	}


	public String getReplyConId() {
		return replyConId;
	}


	public void setReplyConId(String replyConId) {
		this.replyConId = replyConId;
	}


	public int getFatherContentsNum() {
		return fatherContentsNum;
	}


	public void setFatherContentsNum(int fatherContentsNum) {
		this.fatherContentsNum = fatherContentsNum;
	}


	public String getReplyImgsLink() {
		return replyImgsLink;
	}


	public void setReplyImgsLink(String replyImgsLink) {
		this.replyImgsLink = replyImgsLink;
	}


	public String getFatherFrom() {
		return fatherFrom;
	}


	public void setFatherFrom(String fatherFrom) {
		this.fatherFrom = fatherFrom;
	}


	public ReplyVo(int replyLog, String replyNickName, String replyContent, Date replyDate, int replyDepth,
			String replyConId, int fatherContentsNum, String replyImgsLink, String fatherFrom) {
		super();
		this.replyLog = replyLog;
		this.replyNickName = replyNickName;
		this.replyContent = replyContent;
		this.replyDate = replyDate;
		this.replyDepth = replyDepth;
		this.replyConId = replyConId;
		this.fatherContentsNum = fatherContentsNum;
		this.replyImgsLink = replyImgsLink;
		this.fatherFrom = fatherFrom;
	}



	
	
}