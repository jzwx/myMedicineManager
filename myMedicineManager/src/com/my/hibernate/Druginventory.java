package com.my.hibernate;

/**
 * Druginventory entity. @author MyEclipse Persistence Tools
 */

public class Druginventory implements java.io.Serializable {

	// Fields

	private Integer id;
	private String name;
	private Integer dnum;

	// Constructors

	/** default constructor */
	public Druginventory() {
	}

	/** full constructor */
	public Druginventory(String name, Integer dnum) {
		this.name = name;
		this.dnum = dnum;
	}

	// Property accessors

	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getName() {
		return this.name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public Integer getDnum() {
		return this.dnum;
	}

	public void setDnum(Integer dnum) {
		this.dnum = dnum;
	}

}