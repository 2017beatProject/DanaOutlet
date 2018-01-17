package com.bit.daNaOutlet.model.entity;



public class DpgVo {
	private int dpgNum;
	private int dpgCount;
	private String dpgTitle;
	private String dpgWriter;
	private String dpgFrom;
	private String dpgSubject;
	private String dpgContent;
	private String dpgImgLink;
	public int getDpgNum() {
		return dpgNum;
	}
	public void setDpgNum(int dpgNum) {
		this.dpgNum = dpgNum;
	}
	public int getDpgCount() {
		return dpgCount;
	}
	public void setDpgCount(int dpgCount) {
		this.dpgCount = dpgCount;
	}
	public String getDpgTitle() {
		return dpgTitle;
	}
	public void setDpgTitle(String dpgTitle) {
		this.dpgTitle = dpgTitle;
	}
	public String getDpgWriter() {
		return dpgWriter;
	}
	public void setDpgWriter(String dpgWriter) {
		this.dpgWriter = dpgWriter;
	}
	public String getDpgFrom() {
		return dpgFrom;
	}
	public void setDpgFrom(String dpgFrom) {
		this.dpgFrom = dpgFrom;
	}
	public String getDpgSubject() {
		return dpgSubject;
	}
	public void setDpgSubject(String dpgSubject) {
		this.dpgSubject = dpgSubject;
	}
	public String getDpgContent() {
		return dpgContent;
	}
	public void setDpgContent(String dpgContent) {
		this.dpgContent = dpgContent;
	}
	public String getDpgImgLink() {
		return dpgImgLink;
	}
	public void setDpgImgLink(String dpgImgLink) {
		this.dpgImgLink = dpgImgLink;
	}
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((dpgContent == null) ? 0 : dpgContent.hashCode());
		result = prime * result + dpgCount;
		result = prime * result + ((dpgFrom == null) ? 0 : dpgFrom.hashCode());
		result = prime * result + ((dpgImgLink == null) ? 0 : dpgImgLink.hashCode());
		result = prime * result + dpgNum;
		result = prime * result + ((dpgSubject == null) ? 0 : dpgSubject.hashCode());
		result = prime * result + ((dpgTitle == null) ? 0 : dpgTitle.hashCode());
		result = prime * result + ((dpgWriter == null) ? 0 : dpgWriter.hashCode());
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
		DpgVo other = (DpgVo) obj;
		if (dpgContent == null) {
			if (other.dpgContent != null)
				return false;
		} else if (!dpgContent.equals(other.dpgContent))
			return false;
		if (dpgCount != other.dpgCount)
			return false;
		if (dpgFrom == null) {
			if (other.dpgFrom != null)
				return false;
		} else if (!dpgFrom.equals(other.dpgFrom))
			return false;
		if (dpgImgLink == null) {
			if (other.dpgImgLink != null)
				return false;
		} else if (!dpgImgLink.equals(other.dpgImgLink))
			return false;
		if (dpgNum != other.dpgNum)
			return false;
		if (dpgSubject == null) {
			if (other.dpgSubject != null)
				return false;
		} else if (!dpgSubject.equals(other.dpgSubject))
			return false;
		if (dpgTitle == null) {
			if (other.dpgTitle != null)
				return false;
		} else if (!dpgTitle.equals(other.dpgTitle))
			return false;
		if (dpgWriter == null) {
			if (other.dpgWriter != null)
				return false;
		} else if (!dpgWriter.equals(other.dpgWriter))
			return false;
		return true;
	}
	@Override
	public String toString() {
		return "DpgVo [dpgNum=" + dpgNum + ", dpgCount=" + dpgCount + ", dpgTitle=" + dpgTitle + ", dpgWriter="
				+ dpgWriter + ", dpgFrom=" + dpgFrom + ", dpgSubject=" + dpgSubject + ", dpgContent=" + dpgContent
				+ ", dpgImgLink=" + dpgImgLink + "]";
	}
	public DpgVo(int dpgNum, int dpgCount, String dpgTitle, String dpgWriter, String dpgFrom, String dpgSubject,
			String dpgContent, String dpgImgLink) {
		super();
		this.dpgNum = dpgNum;
		this.dpgCount = dpgCount;
		this.dpgTitle = dpgTitle;
		this.dpgWriter = dpgWriter;
		this.dpgFrom = dpgFrom;
		this.dpgSubject = dpgSubject;
		this.dpgContent = dpgContent;
		this.dpgImgLink = dpgImgLink;
	}
	
	
	
	
	
}
