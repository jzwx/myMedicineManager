package com.my.hibernate;

import java.sql.Timestamp;

/**
 * Drugdelivery entity. @author MyEclipse Persistence Tools
 */

public class Drugdelivery implements java.io.Serializable {

	// Fields

	private Integer id;
	private Druginfo druginfo;
	private Integer eliverynum;
	private Double price;
	private Double outgoingamount;
	private Timestamp eliverydate;
	private Double outprofit;
	private String brokerage;

	// Constructors

	/** default constructor */
	public Drugdelivery() {
	}

	/** full constructor */
	public Drugdelivery(Druginfo druginfo, Integer eliverynum, Double price,
			Double outgoingamount, Timestamp eliverydate, Double outprofit,
			String brokerage) {
		this.druginfo = druginfo;
		this.eliverynum = eliverynum;
		this.price = price;
		this.outgoingamount = outgoingamount;
		this.eliverydate = eliverydate;
		this.outprofit = outprofit;
		this.brokerage = brokerage;
	}

	// Property accessors

	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public Druginfo getDruginfo() {
		return this.druginfo;
	}

	public void setDruginfo(Druginfo druginfo) {
		this.druginfo = druginfo;
	}

	public Integer getEliverynum() {
		return this.eliverynum;
	}

	public void setEliverynum(Integer eliverynum) {
		this.eliverynum = eliverynum;
	}

	public Double getPrice() {
		return this.price;
	}

	public void setPrice(Double price) {
		this.price = price;
	}

	public Double getOutgoingamount() {
		return this.outgoingamount;
	}

	public void setOutgoingamount(Double outgoingamount) {
		this.outgoingamount = outgoingamount;
	}

	public Timestamp getEliverydate() {
		return this.eliverydate;
	}

	public void setEliverydate(Timestamp eliverydate) {
		this.eliverydate = eliverydate;
	}

	public Double getOutprofit() {
		return this.outprofit;
	}

	public void setOutprofit(Double outprofit) {
		this.outprofit = outprofit;
	}

	public String getBrokerage() {
		return this.brokerage;
	}

	public void setBrokerage(String brokerage) {
		this.brokerage = brokerage;
	}

}