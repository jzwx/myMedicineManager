package com.my.hibernate;

import java.util.HashSet;
import java.util.Set;

/**
 * Pharmaceutical entity. @author MyEclipse Persistence Tools
 */

public class Pharmaceutical implements java.io.Serializable {

	// Fields

	private Integer pid;
	private String pname;
	private Set druginfos = new HashSet(0);

	// Constructors

	/** default constructor */
	public Pharmaceutical() {
	}

	/** minimal constructor */
	public Pharmaceutical(String pname) {
		this.pname = pname;
	}

	/** full constructor */
	public Pharmaceutical(String pname, Set druginfos) {
		this.pname = pname;
		this.druginfos = druginfos;
	}

	// Property accessors

	public Integer getPid() {
		return this.pid;
	}

	public void setPid(Integer pid) {
		this.pid = pid;
	}

	public String getPname() {
		return this.pname;
	}

	public void setPname(String pname) {
		this.pname = pname;
	}

	public Set getDruginfos() {
		return this.druginfos;
	}

	public void setDruginfos(Set druginfos) {
		this.druginfos = druginfos;
	}

}