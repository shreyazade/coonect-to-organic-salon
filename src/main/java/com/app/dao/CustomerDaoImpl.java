package com.app.dao;

import java.util.List;
import java.util.Set;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.app.pojos.Appointments;
import com.app.pojos.Employee;
import com.app.pojos.Services;
import com.app.pojos.Shops;
import com.app.pojos.Slots;
import com.app.pojos.Users;

@Repository
@Transactional
public class CustomerDaoImpl implements ICustomerDao {

	//private static final String Query = null;
	@PersistenceContext 
	private EntityManager mgr;
	
	@Override
	public List<String> getShopsLocations() {

		String jpql = "select distinct s.locations from Shops s ";
		return mgr.createQuery(jpql, String.class).getResultList();
	}
	


//	public List<String> getShopsAreas() {   //new 31-3-2022
//	
//	String jpql3="select distinct s.areas from Shops s";
//		
//		return mgr.createQuery(jpql3, String.class).getResultList();
//	}
	
	@Override
	public List<Shops> getShopsByLocations(String locations) {

		String jpql = "select s from Shops s where s.locations =:loc";
		return mgr.createQuery(jpql, Shops.class).setParameter("loc", locations).getResultList();
	}
	
//	@Override
//	public List<Shops>getShopsByAreas(String areas) {
//
//		String jpql = "select s from Shops s where s.areas=:ar";
//		return mgr.createQuery(jpql, Shops.class).setParameter("ar", areas).getResultList();
//	}


	@Override
	public String bookAppointment() {

		return null;
	}

	@Override
	public List<Appointments> viewAppointments(int userId) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public String feedbackSubmit(int shopId) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Services> getServicesById(int shopId) {

		String jpql = "select s from Services s join fetch s.shop where s.shop.shopId=:shop_Id";
		return mgr.createQuery(jpql, Services.class).setParameter("shop_Id", shopId).getResultList();
	}

	@Override
	public List<Employee> getEmployeeByShopId(int shopId) {

		String jpql = "select e from Employee e join fetch e.shop where e.shop.shopId=:shop_Id";
		return mgr.createQuery(jpql, Employee.class).setParameter("shop_Id", shopId).getResultList();
	}
	@Override
	public Shops getShopsByShopId(int shopId) {

		String jpql = "select e from Shops e where e.shopId=:shop_id";
		return mgr.createQuery(jpql, Shops.class).setParameter("shopid", shopId).getSingleResult();
	}

	
	
	@Override
	public List<Slots> getSlotsById(int shopId) {

		String jpql = "select s from Slots s join fetch s.shop where s.shop.shopId=:shop_Id order by s.slotSequence";
		List<Slots> slotlist = mgr.createQuery(jpql, Slots.class).setParameter("shop_Id", shopId)
				.getResultList();
		System.out.println("in side dao get slots by shopid............");
		System.out.println(slotlist);

		return slotlist;
	}

	@Override
	public Shops getShopByShopId(int shopId) {

		String jpql = "select s from Shops s where s.shopId=:shopid";
		return mgr.createQuery(jpql, Shops.class).setParameter("shopid", shopId).getSingleResult();
	}

	@Override
	public Services getServicesByServiceId(int serviceId) {

		String jpql = "select s from Services s where s.serviceId=:serviceid";
		return mgr.createQuery(jpql, Services.class).setParameter("serviceid", serviceId)
				.getSingleResult();

	}

	@Override
	public Slots getSlotBySlotsId(int slotId) {

		String jpql = "select s from Slots s where s.slotId=:slotid";
		return mgr.createQuery(jpql, Slots.class).setParameter("slotid", slotId).getSingleResult();
	}

	@Override
	public List<Slots> getSlotsByIdChaire(int shopId) {

		String jpql = "select s from Slots s join fetch s.shop where s.shop.shopId=:shop_Id and s.chaireAvilable>0 order by s.slotSequence";
		List<Slots> slotlist = mgr.createQuery(jpql, Slots.class).setParameter("shop_Id", shopId)
				.getResultList();
		System.out.println("in side dao get slots by shopid and chair >0............");
		System.out.println(slotlist);
		return slotlist;
	}

	@Override
	public Slots getSlotBySlotSeqence(int slotSequence, int shopId) {

		String jpql = "select s from Slots s where s.slotSequence=:slotsequence and shopId=:shopid";
		return mgr.createQuery(jpql, Slots.class).setParameter("slotsequence", slotSequence)
				.setParameter("shopid", shopId).getSingleResult();

	}

	@Override
	public String bookAppointConfirm(Appointments appoint) {

		
		mgr.persist(appoint);
		return "Appointment Booked successfully : ID " + appoint.getAppointId();

	}

	@Override
	public void changeChaireAvailableCount(Slots s,int slotId) {

		
		Slots slot=getSlotBySlotsId(slotId);
		int oldchaires=slot.getChaireAvilable();
		int newchair=oldchaires-1;
		slot.setChaireAvilable(newchair);
		
		mgr.persist(slot);
		/*
		 * String
		 * jpql="update Slots s set s.chaireAvilable="+newchair+" where s.slotId="
		 * +slotId;
		 * sf.getCurrentSession().createQuery(jpql,Slots.class).executeUpdate();
		 */

		 
	}



	@Override
	public Employee getEmployeeByEmpId(int empId) {
		String jpql = "select e from Employee e where e.empId=:empid";
		return mgr.createQuery(jpql, Employee.class).setParameter("empid", empId)
				.getSingleResult();
	}




	
}
