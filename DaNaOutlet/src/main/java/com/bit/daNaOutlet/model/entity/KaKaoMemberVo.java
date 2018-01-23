package com.bit.daNaOutlet.model.entity;

public class KaKaoMemberVo {
	
	private int idKakaoLog;
	private String nickName;
	private String loginFrom;
	private String loginId;
	
	public KaKaoMemberVo() {
		// TODO Auto-generated constructor stub
	}

	public int getIdKakaoLog() {
		return idKakaoLog;
	}

	public void setIdKakaoLog(int idKakaoLog) {
		this.idKakaoLog = idKakaoLog;
	}

	public String getNickName() {
		return nickName;
	}

	public void setNickName(String nickName) {
		this.nickName = nickName;
	}

	public String getLoginFrom() {
		return loginFrom;
	}

	public void setLoginFrom(String loginFrom) {
		this.loginFrom = loginFrom;
	}

	public String getLoginId() {
		return loginId;
	}

	public void setLoginId(String loginId) {
		this.loginId = loginId;
	}

	public KaKaoMemberVo(int idKakaoLog, String nickName, String loginFrom, String loginId) {
		super();
		this.idKakaoLog = idKakaoLog;
		this.nickName = nickName;
		this.loginFrom = loginFrom;
		this.loginId = loginId;
	}

	
	
}
