package spring.vo;

import java.io.Serializable;

public class Address implements Serializable{
	private String zipcode;
	private String address;
	
	// 생성자
	public Address() {
	}


	public Address(String zipcode, String address) {
		this.zipcode = zipcode;
		this.address = address;
	}


	//Getter N Setter
	public String getZipcode() {
		return zipcode;
	}


	public void setZipcode(String zipcode) {
		this.zipcode = zipcode;
	}


	public String getAddress() {
		return address;
	}


	public void setAddress(String address) {
		this.address = address;
	}


	//HashCode N Equals
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((address == null) ? 0 : address.hashCode());
		result = prime * result + ((zipcode == null) ? 0 : zipcode.hashCode());
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
		Address other = (Address) obj;
		if (address == null) {
			if (other.address != null)
				return false;
		} else if (!address.equals(other.address))
			return false;
		if (zipcode == null) {
			if (other.zipcode != null)
				return false;
		} else if (!zipcode.equals(other.zipcode))
			return false;
		return true;
	}

	
	//ToString
	@Override
	public String toString() {
		return "Address [zipcode=" + zipcode + ", address=" + address + "]";
	}
	
	
	
	
	

}
