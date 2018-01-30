package com.bit.daNaOutlet.model.entity;

public class UtilVo {
	private String utilSelect;
	private String utilInput;
	private String utilSubject;
	private int utilStartNum;
	public UtilVo() {
		// TODO Auto-generated constructor stub
	}
	public String getUtilSelect() {
		return utilSelect;
	}
	public void setUtilSelect(String utilSelect) {
		this.utilSelect = utilSelect;
	}
	public String getUtilInput() {
		return utilInput;
	}
	public void setUtilInput(String utilInput) {
		this.utilInput = utilInput;
	}
	public String getUtilSubject() {
		return utilSubject;
	}
	public void setUtilSubject(String utilSubject) {
		this.utilSubject = utilSubject;
	}
	public int getUtilStartNum() {
		return utilStartNum;
	}
	public void setUtilStartNum(int utilStartNum) {
		this.utilStartNum = utilStartNum;
	}
	public UtilVo(String utilSelect, String utilInput, String utilSubject, int utilStartNum) {
		super();
		this.utilSelect = utilSelect;
		this.utilInput = utilInput;
		this.utilSubject = utilSubject;
		this.utilStartNum = utilStartNum;
	}
	public UtilVo(String utilSelect) {
		super();
		this.utilSelect = utilSelect;
	}	
		
}
