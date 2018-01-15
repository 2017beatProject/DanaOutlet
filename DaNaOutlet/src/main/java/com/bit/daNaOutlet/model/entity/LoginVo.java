package com.bit.daNaOutlet.model.entity;

public class LoginVo {
	
	int idKakaoLog;
	String loginId;
	String loginPw;
	String nickName;
	
	public LoginVo() {
		// TODO Auto-generated constructor stub
	}
	


	public LoginVo(int idKakaoLog, String loginId, String loginPw, String nickName) {
		super();
		this.idKakaoLog = idKakaoLog;
		this.loginId = loginId;
		this.loginPw = loginPw;
		this.nickName = nickName;
	}



	public String getLoginId() {
		return loginId;
	}

	public void setLoginId(String loginId) {
		this.loginId = loginId;
	}

	public String getLoginPw() {
		return loginPw;
	}

	public void setLoginPw(String loginPw) {
		this.loginPw = loginPw;
	}

	
	public String getNickName() {
		return nickName;
	}

	public void setNickName(String nickName) {
		this.nickName = nickName;
	}

		
	public int getIdKakaoLog() {
		return idKakaoLog;
	}

	public void setIdKakaoLog(int idKakaoLog) {
		this.idKakaoLog = idKakaoLog;
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((loginId == null) ? 0 : loginId.hashCode());
		result = prime * result + ((loginPw == null) ? 0 : loginPw.hashCode());
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
		LoginVo other = (LoginVo) obj;
		if (loginId == null) {
			if (other.loginId != null)
				return false;
		} else if (!loginId.equals(other.loginId))
			return false;
		if (loginPw == null) {
			if (other.loginPw != null)
				return false;
		} else if (!loginPw.equals(other.loginPw))
			return false;
		return true;
	}
	
	
	
}
