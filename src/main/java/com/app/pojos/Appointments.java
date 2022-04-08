package com.app.pojos;

import java.util.Date;
import java.util.HashSet;
import java.util.Set;

import javax.annotation.Generated;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;
import javax.persistence.Temporal;

import org.hibernate.annotations.GenerationTime;
import org.hibernate.annotations.LazyCollection;
import org.hibernate.annotations.LazyCollectionOption;

@SuppressWarnings("unused")
@Entity
public class Appointments {

	private Integer appointId;
	private String  revDescription;
	private Users user;
	private Shops shop;
	private Set<Services> services=new HashSet<Services>();
	private Set<Slots> slots=new HashSet<Slots>();
	private Set<Employee> employee=new HashSet<Employee>();

	
	@Temporal(javax.persistence.TemporalType.DATE)
	private Date regDate= new Date();

	public Appointments() {
		System.out.println("In constructor of Appointments....");
	}

	
	public Appointments(Integer appointId, String revDescription) {
		super();
		this.appointId = appointId;
		this.revDescription = revDescription;
	}


	public Appointments(Date regDate) {
		this.regDate = regDate;
	}

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	public Integer getAppointId() {
		return appointId;
	}

	public void setAppointId(Integer appointId) {
		this.appointId = appointId;
	}

	// Appointments to user Association Mapping
	@ManyToOne
	@JoinColumn(name = "userId")
	public Users getUser() {
		return user;
	}

	public void setUser(Users user) {
		this.user = user;
	}

	// Appointments to user Association Mapping
	@ManyToOne
	@JoinColumn(name = "shopId")
	public Shops getShop() {
		return shop;
	}

	public void setShop(Shops shop) {
		this.shop = shop;
	}

	
	
	
	
	// Appointments to services Association
	@LazyCollection(LazyCollectionOption.FALSE)
	@ManyToMany()
	@JoinTable(name = "appoints_services", joinColumns = @JoinColumn(name = "appointId"), inverseJoinColumns = @JoinColumn(name = "serviceId"))
	public Set<Services> getServices() {
		return services;
	}
	public void setServices(Set<Services> services) {
		this.services = services;
	}


	// Appointments with employee booking
		@LazyCollection(LazyCollectionOption.FALSE)
		@ManyToMany()
		@JoinTable(name = "appoints_employee", joinColumns = @JoinColumn(name = "appointId"), inverseJoinColumns = @JoinColumn(name = "empId"))	
	public Set<Employee> getEmployee() {
		return employee;
	}

	public void setEmployee(Set<Employee> employee) {
		this.employee = employee;
	}

	
//Appointments to slots Association
	@LazyCollection(LazyCollectionOption.FALSE)
	@ManyToMany()
	@JoinTable(name = "appoints_slots", joinColumns = @JoinColumn(name = "appointId"), inverseJoinColumns = @JoinColumn(name = "slotId"))
	public Set<Slots> getSlots() {
		return slots;
	}

	public void setSlots(Set<Slots> slots) {
		this.slots = slots;
	}
	
	//Appointments to employee Association
	
	
	public Date getRegDate() {
		return regDate;
	}

	public void setRegDate(Date regDate) {
		this.regDate = regDate;
	}


	public String getRevDescription() {
		return revDescription;
	}


	public void setRevDescription(String revDescription) {
		this.revDescription = revDescription;
	}

	
}
