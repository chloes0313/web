package com.chloes.vo;

import java.util.Arrays;
import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

public class Product {
	private String id;
	private String name;
	private String companyName;
	private int price;
	@DateTimeFormat(pattern="yyyy-MM-dd")
	private Date dateOfProduction;
	private String[] option;
	
	
	
	public Product() {
	}



	public Product(String id, String name, String companyName, int price, Date dateOfProduction, String[] option) {
		this.id = id;
		this.name = name;
		this.companyName = companyName;
		this.price = price;
		this.dateOfProduction = dateOfProduction;
		this.option = option;
	}



	public String getId() {
		return id;
	}



	public void setId(String id) {
		this.id = id;
	}



	public String getName() {
		return name;
	}



	public void setName(String name) {
		this.name = name;
	}



	public String getCompanyName() {
		return companyName;
	}



	public void setCompanyName(String companyName) {
		this.companyName = companyName;
	}



	public int getPrice() {
		return price;
	}



	public void setPrice(int price) {
		this.price = price;
	}



	public Date getDateOfProduction() {
		return dateOfProduction;
	}



	public void setDateOfProduction(Date dateOfProduction) {
		this.dateOfProduction = dateOfProduction;
	}



	public String[] getOption() {
		return option;
	}



	public void setOption(String[] option) {
		this.option = option;
	}



	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((companyName == null) ? 0 : companyName.hashCode());
		result = prime * result + ((dateOfProduction == null) ? 0 : dateOfProduction.hashCode());
		result = prime * result + ((id == null) ? 0 : id.hashCode());
		result = prime * result + ((name == null) ? 0 : name.hashCode());
		result = prime * result + Arrays.hashCode(option);
		result = prime * result + price;
		return result;
	}



	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		Product other = (Product) obj;
		if (companyName == null) {
			if (other.companyName != null)
				return false;
		} else if (!companyName.equals(other.companyName))
			return false;
		if (dateOfProduction == null) {
			if (other.dateOfProduction != null)
				return false;
		} else if (!dateOfProduction.equals(other.dateOfProduction))
			return false;
		if (id == null) {
			if (other.id != null)
				return false;
		} else if (!id.equals(other.id))
			return false;
		if (name == null) {
			if (other.name != null)
				return false;
		} else if (!name.equals(other.name))
			return false;
		if (!Arrays.equals(option, other.option))
			return false;
		if (price != other.price)
			return false;
		return true;
	}



	@Override
	public String toString() {
		return "Product [id=" + id + ", name=" + name + ", companyName=" + companyName + ", price=" + price
				+ ", dateOfProduction=" + dateOfProduction + ", option=" + Arrays.toString(option) + "]";
	}
	
	
	
	

}
