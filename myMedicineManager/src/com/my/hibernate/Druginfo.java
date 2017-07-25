package com.my.hibernate;

import java.util.HashSet;
import java.util.Set;

/**
 * Druginfo entity. @author MyEclipse Persistence Tools
 */

public class Druginfo implements java.io.Serializable {

	// Fields

	private Integer id;
	private Drugclass drugclass;
	private Pharmaceutical pharmaceutical;
	private String name;
	private String isbn;
	private String usager;
	private String component;
	private String specifications;
	private String company;
	private Integer lowerinventory;
	private Integer stockupperlimit;
	private Double buyingprice;
	private Double retailprice;
	private String image;
	private String remark;
	private Set drugstorages = new HashSet(0);
	private Set drugdeliveries = new HashSet(0);

	// Constructors

	/** default constructor */
	public Druginfo() {
	}

	/** minimal constructor */
	public Druginfo(Drugclass drugclass, Pharmaceutical pharmaceutical,
			String name, String isbn, String usager, String component,
			String specifications, String company, Integer lowerinventory,
			Integer stockupperlimit, Double buyingprice, Double retailprice) {
		this.drugclass = drugclass;
		this.pharmaceutical = pharmaceutical;
		this.name = name;
		this.isbn = isbn;
		this.usager = usager;
		this.component = component;
		this.specifications = specifications;
		this.company = company;
		this.lowerinventory = lowerinventory;
		this.stockupperlimit = stockupperlimit;
		this.buyingprice = buyingprice;
		this.retailprice = retailprice;
	}

	/** full constructor */
	public Druginfo(Drugclass drugclass, Pharmaceutical pharmaceutical,
			String name, String isbn, String usager, String component,
			String specifications, String company, Integer lowerinventory,
			Integer stockupperlimit, Double buyingprice, Double retailprice,
			String image, String remark, Set drugstorages, Set drugdeliveries) {
		this.drugclass = drugclass;
		this.pharmaceutical = pharmaceutical;
		this.name = name;
		this.isbn = isbn;
		this.usager = usager;
		this.component = component;
		this.specifications = specifications;
		this.company = company;
		this.lowerinventory = lowerinventory;
		this.stockupperlimit = stockupperlimit;
		this.buyingprice = buyingprice;
		this.retailprice = retailprice;
		this.image = image;
		this.remark = remark;
		this.drugstorages = drugstorages;
		this.drugdeliveries = drugdeliveries;
	}

	// Property accessors

	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public Drugclass getDrugclass() {
		return this.drugclass;
	}

	public void setDrugclass(Drugclass drugclass) {
		this.drugclass = drugclass;
	}

	public Pharmaceutical getPharmaceutical() {
		return this.pharmaceutical;
	}

	public void setPharmaceutical(Pharmaceutical pharmaceutical) {
		this.pharmaceutical = pharmaceutical;
	}

	public String getName() {
		return this.name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getIsbn() {
		return this.isbn;
	}

	public void setIsbn(String isbn) {
		this.isbn = isbn;
	}

	public String getUsager() {
		return this.usager;
	}

	public void setUsager(String usager) {
		this.usager = usager;
	}

	public String getComponent() {
		return this.component;
	}

	public void setComponent(String component) {
		this.component = component;
	}

	public String getSpecifications() {
		return this.specifications;
	}

	public void setSpecifications(String specifications) {
		this.specifications = specifications;
	}

	public String getCompany() {
		return this.company;
	}

	public void setCompany(String company) {
		this.company = company;
	}

	public Integer getLowerinventory() {
		return this.lowerinventory;
	}

	public void setLowerinventory(Integer lowerinventory) {
		this.lowerinventory = lowerinventory;
	}

	public Integer getStockupperlimit() {
		return this.stockupperlimit;
	}

	public void setStockupperlimit(Integer stockupperlimit) {
		this.stockupperlimit = stockupperlimit;
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

	public String getImage() {
		return this.image;
	}

	public void setImage(String image) {
		this.image = image;
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

	public Set getDrugdeliveries() {
		return this.drugdeliveries;
	}

	public void setDrugdeliveries(Set drugdeliveries) {
		this.drugdeliveries = drugdeliveries;
	}

}