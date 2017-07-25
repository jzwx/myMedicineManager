package com.my.hibernate;

import java.util.HashSet;
import java.util.Set;

/**
 * Drugclass entity. @author MyEclipse Persistence Tools
 */

public class Drugclass implements java.io.Serializable {

	// Fields

	private Integer cid;
	private String cname;
	private String description;
	private Set druginfos = new HashSet(0);

	// Constructors

	/** default constructor */
	public Drugclass() {
	}

	/** minimal constructor */
	public Drugclass(String cname) {
		this.cname = cname;
	}

	/** full constructor */
	public Drugclass(String cname, String description, Set druginfos) {
		this.cname = cname;
		this.description = description;
		this.druginfos = druginfos;
	}

	// Property accessors

	public Integer getCid() {
		return this.cid;
	}

	public void setCid(Integer cid) {
		this.cid = cid;
	}

	public String getCname() {
		return this.cname;
	}

	public void setCname(String cname) {
		this.cname = cname;
	}

	public String getDescription() {
		return this.description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public Set getDruginfos() {
		return this.druginfos;
	}

	public void setDruginfos(Set druginfos) {
		this.druginfos = druginfos;
	}

}