package com.my.hibernate;

import java.util.Date;

/**
 * Drugstorage entity. @author MyEclipse Persistence Tools
 */

public class Drugstorage implements java.io.Serializable {

	// Fields

	private Integer id;
	private Supplymanager supplymanager;
	private Druginfo druginfo;
	private String specifications;
	private String drugnumber;
	private Integer storagenum;
	private Double buyingprice;
	private Double retailprice;
	private Double wholesaleprice;
	private Date startdate;
	private Date enddate;
	private String brokerage;

	// Constructors

	/** default constructor */
	public Drugstorage() {
	}

	/** full constructor */
	public Drugstorage(Supplymanager supplymanager, Druginfo druginfo,
			String specifications, String drugnumber, Integer storagenum,
			Double buyingprice, Double retailprice, Double wholesaleprice,
			Date startdate, Date enddate, String brokerage) {
		this.supplymanager = supplymanager;
		this.druginfo = druginfo;
		this.specifications = specifications;
		this.drugnumber = drugnumber;
		this.storagenum = storagenum;
		this.buyingprice = buyingprice;
		this.retailprice = retailprice;
		this.wholesaleprice = wholesaleprice;
		this.startdate = startdate;
		this.enddate = enddate;
		this.brokerage = brokerage;
	}

	// Property accessors

	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public Supplymanager getSupplymanager() {
		return this.supplymanager;
	}

	public void setSupplymanager(Supplymanager supplymanager) {
		this.supplymanager = supplymanager;
	}

	public Druginfo getDruginfo() {
		return this.druginfo;
	}

	public void setDruginfo(Druginfo druginfo) {
		this.druginfo = druginfo;
	}

	public String getSpecifications() {
		return this.specifications;
	}

	public void setSpecifications(String specifications) {
		this.specifications = specifications;
	}

	public String getDrugnumber() {
		return this.drugnumber;
	}

	public void setDrugnumber(String drugnumber) {
		this.drugnumber = drugnumber;
	}

	public Integer getStoragenum() {
		return this.storagenum;
	}

	public void setStoragenum(Integer storagenum) {
		this.storagenum = storagenum;
	}

	public Double getBuyingprice() {
		return this.buyingprice;
	}

	public void setBuyingprice(Double buyingprice) {
		this.buyingprice = buyingprice;
	}

	public Double getRetailprice() {
		return this.retailprice;
	}

	public void setRetailprice(Double retailprice) {
		this.retailprice = retailprice;
	}

	public Double getWholesaleprice() {
		return this.wholesaleprice;
	}

	public void setWholesaleprice(Double wholesaleprice) {
		this.wholesaleprice = wholesaleprice;
	}

	public Date getStartdate() {
		return this.startdate;
	}

	public void setStartdate(Date startdate) {
		this.startdate = startdate;
	}

	public Date getEnddate() {
		return this.enddate;
	}

	public void setEnddate(Date enddate) {
		this.enddate = enddate;
	}

	public String getBrokerage() {
		return this.brokerage;
	}

	public void setBrokerage(String brokerage) {
		this.brokerage = brokerage;
	}

}