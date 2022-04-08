package com.app.pojos;




import java.util.ArrayList;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;

import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;

import org.hibernate.annotations.LazyCollection;
import org.hibernate.annotations.LazyCollectionOption;



@Entity
public class Employee {

	private Integer empId;
	private String empName;
	private String empMobNo;
	private String empExperience;
	private String salonName;
	private String status;
	private Shops shop;
	private List<Appointments>Appoints=new ArrayList<>();
	
	
	public Employee() {

		System.out.println("Inside user constructor....");
	}



	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name="emp_Id", unique = true, nullable = false)
	public Integer getEmpId() {
		return empId;
	}

	public void setEmpId(Integer empId) {
		this.empId = empId;
	}

	public String getEmpName() {
		return empName;
	}

	public void setEmpName(String empName) {
		this.empName = empName;
	}

	public String getEmpMobNo() {
		return empMobNo;
	}

	public void setEmpMobNo(String empMobNo) {
		this.empMobNo = empMobNo;
	}

	public String getEmpExperience() {
		return empExperience;
	}

	public void setEmpExperience(String empExperience) {
		this.empExperience = empExperience;
	}

	public String getSalonName() {
		return salonName;
	}

	public void setSalonName(String salonName) {
		this.salonName = salonName;
	}

	public String getStatus() {
		return status;
	}
	
	public void setStatus(String status) {
		this.status = status;
	}

	
	

	public Employee(Integer empId, String empName, String empMobNo, String empExperience, String salonName,
			String status) {
	
		this.empId = empId;
		this.empName = empName;
		this.empMobNo = empMobNo;
		this.empExperience = empExperience;
		this.salonName = salonName;
		this.status = status;
	}





	
//	@ManyToOne
//	@JoinTable(name="Employee_Shops",joinColumns=@JoinColumn(name="employee_salonName",referencedColumnName="salonName"))
//	

	@ManyToOne
	@JoinColumn(name="shopId")
public Shops getShop() {
	return shop;
}


public void setShop(Shops shop) {
	this.shop = shop;
}

	@Override
	public String toString() {
		return "Employee [empId=" + empId + ", empName=" + empName + ", empMobNo=" + empMobNo + ", empExperience="
				+ empExperience + ", salonName=" + salonName + ", status=" + status + "]";
	}
//	@Override
//	public String toString() {
//		return "Employee [empId=" + empId + ", empName=" + empName + ", empMobNo=" + empMobNo + ", empExperience="
//				+ empExperience + ", status=" + status + "]";
//	}


	@LazyCollection(LazyCollectionOption.FALSE)
	  @ManyToMany(mappedBy = "employee" ) 
	public List<Appointments> getAppoints() {
		// TODO Auto-generated method stub
		return Appoints;
	}

	 public void setAppoints(List<Appointments> appoints) 
	  {
		  Appoints = appoints; 
	  }


	

	

	
	}