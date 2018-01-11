package com.bit.daNaOutlet.model.entity;

import java.util.Date;

public class MemberVo {

	private int mnum;
	private String name;
	private int phone;
	private Date mbirth;
	
	public MemberVo() {
		// TODO Auto-generated constructor stub
	}

	public MemberVo(int mnum, String name, int phone, Date mbirth) {
		super();
		this.mnum = mnum;
		this.name = name;
		this.phone = phone;
		this.mbirth = mbirth;
	}

	public int getMnum() {
		return mnum;
	}

	public void setMnum(int mnum) {
		this.mnum = mnum;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public int getPhone() {
		return phone;
	}

	public void setPhone(int phone) {
		this.phone = phone;
	}

	public Date getMbirth() {
		return mbirth;
	}

	public void setMbirth(Date mbirth) {
		this.mbirth = mbirth;
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + mnum;
		result = prime * result + ((name == null) ? 0 : name.hashCode());
		result = prime * result + phone;
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
		if (mnum != other.mnum)
			return false;
		if (name == null) {
			if (other.name != null)
				return false;
		} else if (!name.equals(other.name))
			return false;
		if (phone != other.phone)
			return false;
		return true;
	}

	@Override
	public String toString() {
		return "MemberVo [mnum=" + mnum + ", name=" + name + ", phone=" + phone + ", mbirth=" + mbirth + "]";
	}
	
	
	
}
