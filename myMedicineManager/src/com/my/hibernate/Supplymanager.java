package com.my.hibernate;

import java.util.HashSet;
import java.util.Set;

/**
 * Supplymanager entity. @author MyEclipse Persistence Tools
 */

public class Supplymanager implements java.io.Serializable {

	// Fields

	private Integer sid;
	private String sname;
	private String saddress;
	private String sphone;
	private String contacts;
	private String remark;
	private Set drugstorages = new HashSet(0);

	// Constructors

	/** default constructor */
	public Supplymanager() {
	}

	/** minimal constructor */
	public Supplymanager(String sname, String saddress, String sphone,
			String contacts) {
		this.sname = sname;
		this.saddress = saddress;
		this.sphone = sphone;
		this.contacts = contacts;
	}

	/** full constructor */
	public Supplymanager(String sname, String saddress, String sphone,
			String contacts, String remark, Set drugstorages) {
		this.sname = sname;
		this.saddress = saddress;
		this.sphone = sphone;
		this.contacts = contacts;
		this.remark = remark;
		this.drugstorages = drugstorages;
	}

	// Property accessors

	public Integer getSid() {
		return this.sid;
	}

	public void setSid(Integer sid) {
		this.sid = sid;
	}

	public String getSname() {
		return this.sname;
	}

	public void setSname(String sname) {
		this.sname = sname;
	}

	public String getSaddress() {
		return this.saddress;
	}

	public void setSaddress(String saddress) {
		this.saddress = saddress;
	}

	public String getSphone() {
		return this.sphone;
	}

	public void setSphone(String sphone) {
		this.sphone = sphone;
	}

	public String getContacts() {
		return this.contacts;
	}

	public void setContacts(String contacts) {
		this.contacts = contacts;
	}

	public String getRemark() {
		return this.remark;
	}

	public void setRemark(String remark) {
		this.remark = remark;
	}

	public Set getDrugstorages() {
		return this.drugstorages;
	}

	public void setDrugstorages(Set drugstorages) {
		this.drugstorages = drugstorages;
	}

}