package com.bit.daNaOutlet.model.entity;

import java.sql.Date;

public class MemberVo {

	private int mnum;
	private String nickName;
	private String phone;
	private Date mbirth;
	private String mail;
	private String addr;
	private String addrn;
	private String sex;
	private String loginId;
	private String loginPw;
	private String loginFrom;

	public MemberVo() {
		// TODO Auto-generated constructor stub
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((addr == null) ? 0 : addr.hashCode());
		result = prime * result + ((addrn == null) ? 0 : addrn.hashCode());
		result = prime * result + ((loginFrom == null) ? 0 : loginFrom.hashCode());
		result = prime * result + ((loginId == null) ? 0 : loginId.hashCode());
		result = prime * result + ((loginPw == null) ? 0 : loginPw.hashCode());
		result = prime * result + ((mail == null) ? 0 : mail.hashCode());
		result = prime * result + ((mbirth == null) ? 0 : mbirth.hashCode());
		result = prime * result + mnum;
		result = prime * result + ((nickName == null) ? 0 : nickName.hashCode());
		result = prime * result + ((phone == null) ? 0 : phone.hashCode());
		result = prime * result + ((sex == null) ? 0 : sex.hashCode());
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
		MemberVo other = (MemberVo) obj;
		if (addr == null) {
			if (other.addr != null)
				return false;
		} else if (!addr.equals(other.addr))
			return false;
		if (addrn == null) {
			if (other.addrn != null)
				return false;
		} else if (!addrn.equals(other.addrn))
			return false;
		if (loginFrom == null) {
			if (other.loginFrom != null)
				return false;
		} else if (!loginFrom.equals(other.loginFrom))
			return false;
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
		if (mail == null) {
			if (other.mail != null)
				return false;
		} else if (!mail.equals(other.mail))
			return false;
		if (mbirth == null) {
			if (other.mbirth != null)
				return false;
		} else if (!mbirth.equals(other.mbirth))
			return false;
		if (mnum != other.mnum)
			return false;
		if (nickName == null) {
			if (other.nickName != null)
				return false;
		} else if (!nickName.equals(other.nickName))
			return false;
		if (phone == null) {
			if (other.phone != null)
				return false;
		} else if (!phone.equals(other.phone))
			return false;
		if (sex == null) {
			if (other.sex != null)
				return false;
		} else if (!sex.equals(other.sex))
			return false;
		return true;
	}

	public int getMnum() {
		return mnum;
	}

	public void setMnum(int mnum) {
		this.mnum = mnum;
	}

	public String getNickName() {
		return nickName;
	}

	public void setNickName(String nickName) {
		this.nickName = nickName;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public Date getMbirth() {
		return mbirth;
	}

	public void setMbirth(Date mbirth) {
		this.mbirth = mbirth;
	}

	public String getMail() {
		return mail;
	}

	public void setMail(String mail) {
		this.mail = mail;
	}

	public String getAddr() {
		return addr;
	}

	public void setAddr(String addr) {
		this.addr = addr;
	}

	public String getAddrn() {
		return addrn;
	}

	public void setAddrn(String addrn) {
		this.addrn = addrn;
	}

	public String getSex() {
		return sex;
	}

	public void setSex(String sex) {
		this.sex = sex;
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

	public String getLoginFrom() {
		return loginFrom;
	}

	public void setLoginFrom(String loginFrom) {
		this.loginFrom = loginFrom;
	}

	public MemberVo(int mnum, String nickName, String phone, Date mbirth, String mail, String addr, String addrn,
			String sex, String loginId, String loginPw, String loginFrom) {
		super();
		this.mnum = mnum;
		this.nickName = nickName;
		this.phone = phone;
		this.mbirth = mbirth;
		this.mail = mail;
		this.addr = addr;
		this.addrn = addrn;
		this.sex = sex;
		this.loginId = loginId;
		this.loginPw = loginPw;
		this.loginFrom = loginFrom;
	}

	
}