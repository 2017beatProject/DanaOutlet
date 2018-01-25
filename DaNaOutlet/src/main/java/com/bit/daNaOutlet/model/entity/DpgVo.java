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
	private String dpgLoginId;
	private String dpgNalja;
	

	public DpgVo() {
		// TODO Auto-generated constructor stub
	}


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


	public String getDpgLoginId() {
		return dpgLoginId;
	}


	public void setDpgLoginId(String dpgLoginId) {
		this.dpgLoginId = dpgLoginId;
	}


	public String getDpgNalja() {
		return dpgNalja;
	}


	public void setDpgNalja(String dpgNalja) {
		this.dpgNalja = dpgNalja;
	}


	public DpgVo(int dpgNum, int dpgCount, String dpgTitle, String dpgWriter, String dpgFrom, String dpgSubject,
			String dpgContent, String dpgImgLink, String dpgLoginId, String dpgNalja) {
		super();
		this.dpgNum = dpgNum;
		this.dpgCount = dpgCount;
		this.dpgTitle = dpgTitle;
		this.dpgWriter = dpgWriter;
		this.dpgFrom = dpgFrom;
		this.dpgSubject = dpgSubject;
		this.dpgContent = dpgContent;
		this.dpgImgLink = dpgImgLink;
		this.dpgLoginId = dpgLoginId;
		this.dpgNalja = dpgNalja;
	}


	
	
}