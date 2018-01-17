package com.bit.daNaOutlet.model.entity;

import java.sql.Date;

public class ReplyVo {

	int replyLog;
	String replyId;
	String replyContent;
	Date replyDate;
	int replyDepth;
	String replyConId;
	int fatherContentsNum;
	
	public ReplyVo() {
		// TODO Auto-generated constructor stub
	}

	public int getReplyLog() {
		return replyLog;
	}

	public void setReplyLog(int replyLog) {
		this.replyLog = replyLog;
	}

	public String getReplyId() {
		return replyId;
	}

	public void setReplyId(String replyId) {
		this.replyId = replyId;
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



	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + fatherContentsNum;
		result = prime * result + ((replyConId == null) ? 0 : replyConId.hashCode());
		result = prime * result + ((replyContent == null) ? 0 : replyContent.hashCode());
		result = prime * result + replyDepth;
		result = prime * result + ((replyId == null) ? 0 : replyId.hashCode());
		result = prime * result + replyLog;
		return result;
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		ReplyVo other = (ReplyVo) obj;
		if (fatherContentsNum != other.fatherContentsNum)
			return false;
		if (replyConId == null) {
			if (other.replyConId != null)
				return false;
		} else if (!replyConId.equals(other.replyConId))
			return false;
		if (replyContent == null) {
			if (other.replyContent != null)
				return false;
		} else if (!replyContent.equals(other.replyContent))
			return false;
		if (replyDepth != other.replyDepth)
			return false;
		if (replyId == null) {
			if (other.replyId != null)
				return false;
		} else if (!replyId.equals(other.replyId))
			return false;
		if (replyLog != other.replyLog)
			return false;
		return true;
	}

	public ReplyVo(int replyLog, String replyId, String replyContent, Date replyDate, int replyDepth, String replyConId,
			int fatherContentsNum) {
		super();
		this.replyLog = replyLog;
		this.replyId = replyId;
		this.replyContent = replyContent;
		this.replyDate = replyDate;
		this.replyDepth = replyDepth;
		this.replyConId = replyConId;
		this.fatherContentsNum = fatherContentsNum;
	}

	
	
}
