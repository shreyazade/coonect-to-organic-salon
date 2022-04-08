package com.app.dao;

import java.util.List;
import java.util.Set;

import com.app.pojos.Appointments;
import com.app.pojos.Employee;
import com.app.pojos.Services;
import com.app.pojos.Shops;
import com.app.pojos.Slots;
import com.app.pojos.Users;

public interface ICustomerDao {
	
	String bookAppointment();
	List<Appointments> viewAppointments(int userId);
	String feedbackSubmit(int shopId);
	List<String>getShopsLocations();
//	List<String>getShopsAreas(); //
	List<Shops> getShopsByLocations(String locations);

//    List<Shops>getShopsByAreas(String areas);
	
	List<Services> getServicesById(int shopId);	
	List<Slots> getSlotsById(int shopId);
	Shops getShopByShopId(int shopId);
	Services getServicesByServiceId(int serviceId);
	Slots getSlotBySlotsId(int slotId);
	List<Slots> getSlotsByIdChaire(int shopId);
	Slots getSlotBySlotSeqence(int slotSequence,int shopId);
	String bookAppointConfirm(Appointments appoint);
	void changeChaireAvailableCount(Slots s,int slotId);
	List<Employee> getEmployeeByShopId(int shopId);
	Employee getEmployeeByEmpId(int empId);
	Shops getShopsByShopId(int shopId);
	
   
}
