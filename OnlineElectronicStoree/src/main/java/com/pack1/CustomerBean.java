package com.pack1;

import java.io.Serializable;

public class CustomerBean implements Serializable
{
	private String c_uname, c_pwd, c_fname, c_lname, c_addr, c_mail, c_phn;
	
	public CustomerBean() {}

	public String getC_uname() {
		return c_uname;
	}

	public void setC_uname(String c_uname) {
		this.c_uname = c_uname;
	}

	public String getC_pwd() {
		return c_pwd;
	}

	public void setC_pwd(String c_pwd) {
		this.c_pwd = c_pwd;
	}

	public String getC_fname() {
		return c_fname;
	}

	public void setC_fname(String c_fname) {
		this.c_fname = c_fname;
	}

	public String getC_lname() {
		return c_lname;
	}

	public void setC_lname(String c_lname) {
		this.c_lname = c_lname;
	}

	public String getC_addr() {
		return c_addr;
	}

	public void setC_addr(String c_addr) {
		this.c_addr = c_addr;
	}

	public String getC_mail() {
		return c_mail;
	}

	public void setC_mail(String c_mail) {
		this.c_mail = c_mail;
	}

	public String getC_phn() {
		return c_phn;
	}

	public void setC_phn(String c_phn) {
		this.c_phn = c_phn;
	};

	
	
}
