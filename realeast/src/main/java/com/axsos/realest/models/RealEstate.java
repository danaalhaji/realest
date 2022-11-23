package com.axsos.realest.models;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.EnumType;
import javax.persistence.Enumerated;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.validation.constraints.Min;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

@Entity
@Table(name = "realestes")
public class RealEstate {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;


	private String proName;


	private String description;
	

	private int numberOfUnits;


	private double satrtingPrice;

	private double endingPrice;


	@Enumerated(EnumType.STRING)
	@Column(name = "location")
	private location address;

	public enum location {
		Massyon, Massayef, AlBireh, Elersal, AlTireh, UmElsharaeet, ALRyhan, EinMusbah
	};

	@NotNull
	@Enumerated(EnumType.STRING)
	@Column(name = "status")
	private status status;

	public enum status {
		underConstruction,
		moveInReady
		};
	
	

	private double satrtingArea;	
	


	private double endingArea;
	
	

	private String payment;
	
    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name="company_id")
    private Company company;

	public RealEstate() {
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getProName() {
		return proName;
	}

	public void setProName(String proName) {
		this.proName = proName;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public int getNumberOfUnits() {
		return numberOfUnits;
	}

	public void setNumberOfUnits(int numberOfUnits) {
		this.numberOfUnits = numberOfUnits;
	}

	public double getSatrtingPrice() {
		return satrtingPrice;
	}

	public void setSatrtingPrice(double satrtingPrice) {
		this.satrtingPrice = satrtingPrice;
	}

	public double getEndingPrice() {
		return endingPrice;
	}

	public void setEndingPrice(double endingPrice) {
		this.endingPrice = endingPrice;
	}

	public location getAddress() {
		return address;
	}

	public void setAddress(location address) {
		this.address = address;
	}

	public status getStatus() {
		return status;
	}

	public void setStatus(status status) {
		this.status = status;
	}

	public double getSatrtingArea() {
		return satrtingArea;
	}

	public void setSatrtingArea(double satrtingArea) {
		this.satrtingArea = satrtingArea;
	}

	public double getEndingArea() {
		return endingArea;
	}

	public void setEndingArea(double endingArea) {
		this.endingArea = endingArea;
	}

	public String getPayment() {
		return payment;
	}

	public void setPayment(String payment) {
		this.payment = payment;
	}

	public Company getCompany() {
		return company;
	}

	public void setCompany(Company company) {
		this.company = company;
	}

}
