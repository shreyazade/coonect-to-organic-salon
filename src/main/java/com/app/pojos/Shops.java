package com.app.pojos;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import javax.persistence.*;
import org.hibernate.annotations.LazyCollection;
import org.hibernate.annotations.LazyCollectionOption;



@Entity
public class Shops {

	private Integer shopId;
	private String shopName;
	private String ownerName;
	private String status; //new 
	private String locations;
	private String areas ;
	private String addresses;
	private List<Services> services = new ArrayList<Services>();
	private Set<Slots> slots = new HashSet<Slots>();
	private List<Appointments> appointments = new ArrayList<Appointments>();
	private List<Employee> employee = new ArrayList<Employee>();
	

	public Shops() {
		System.out.println("Inside Shops constructor....");

	}

	public Shops(Integer shopId, String shopName, String ownerName,String status, String locations,
			String areas, String addresses) {
		super();
		this.shopId = shopId;
		this.shopName = shopName;
		this.ownerName = ownerName;
		this.status = status;
		this.locations = locations;
		this.areas = areas;
		this.addresses = addresses;
	}

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	public Integer getShopId() {
		return shopId;
	}

	public void setShopId(Integer shopId) {
		this.shopId = shopId;
	}

	public String getShopName() {
		return shopName;
	}

	public String getOwnerName() {
		return ownerName;
	}

	public void setOwnerName(String ownerName) {
		this.ownerName = ownerName;
	}

	public void setShopName(String shopName) {
		this.shopName = shopName;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public String getLocations() {
		return locations;
	}

	public void setLocations(String locations) {
		this.locations = locations;
	}

	public String getAreas() {
		return areas;
	}

	public void setAreas(String areas) {
		this.areas = areas;
	}

	public String getAddresses() {
		return addresses;
	}

	public void setAddresses(String addresses) {
		this.addresses = addresses;
	}

	// shop-service one-many Association
	@LazyCollection(LazyCollectionOption.TRUE)
	@OneToMany(mappedBy = "shop", orphanRemoval = true)
	public List<Services> getServices() {
		return services;
	}

	public void setServices(List<Services> services) {
		this.services = services;
	}

	// shop-slot one-many Association
	@LazyCollection(LazyCollectionOption.TRUE)
	@OneToMany(mappedBy = "shop", cascade = CascadeType.ALL, orphanRemoval = true)
	public Set<Slots> getSlots() {
		return slots;
	}

	public void setSlots(Set<Slots> slots) {
		this.slots = slots;
	}

	// shop-Appointments one-many Association
	@LazyCollection(LazyCollectionOption.FALSE)
	@OneToMany(mappedBy = "shop", cascade = CascadeType.ALL, orphanRemoval = true)
	public List<Appointments> getAppointments() {
		return appointments;
	}

	public void setAppointments(List<Appointments> appointments) {
		this.appointments = appointments;
	}
	
	@LazyCollection(LazyCollectionOption.FALSE)
	@OneToMany(mappedBy = "shop", cascade = CascadeType.ALL, orphanRemoval = true)
	public List<Employee> getEmployee() {
		return employee;
	}

	public void setEmployee(List<Employee> employee) {
		this.employee = employee;
	}
	
	
//	@OneToMany(mappedBy="shops")
//	private List<Employee> employees;

	@Override
	public String toString() {
		return "Shops [shopId=" + shopId + ", shopName=" + shopName + ", ownerName=" + ownerName + ","
				+ "status=" + status + ", locations=" + locations + ", areas=" + areas + ", addresses="
				+ addresses + "]";
	}
	

}
