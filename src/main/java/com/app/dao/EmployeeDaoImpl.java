package com.app.dao;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.EntityManager;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.app.pojos.Employee;
import com.app.pojos.Services;
import com.app.pojos.Shops;

@Repository
@Transactional
public class EmployeeDaoImpl implements EmployeeDao {
	
	
	@Autowired
	private EntityManager mgr;
	

	


	@Override
	public String addNewEmployee(Employee e) {
		mgr.persist(e);
		return "Employee registered successfully : ID "+e.getEmpId();
	}

//	@Override
//	public String removeEmployee(int empId) {
//		Employee e = mgr.find(Employee.class, empId);
//		if (e != null) {
//			mgr.remove(e);
//		
//			return "employee deleted with ID " + e.getEmpId();
//		}
//		return "employee deletion failed Invalid employee ID";
//	}

//	
//	
//	@Override
//	public String updateEmployee(Employee e) {
//		
//		mgr.merge(e);
//		return "employee Updated successfully : ID "+e.getEmpId();
//	}
//
//	@Override
//	public Employee getEmployeeByEmpId(int empId) {
//		String jpql2="select e from Employee e where e.empId=:empId";
//		return mgr.createQuery(jpql2,Employee.class).setParameter("empId",empId).getSingleResult();
//	}

//
//	@Override
//	public List<Employee> getEmployee() {
//		String jpql="select e from Employee e";
//		return mgr.createQuery(jpql,Employee.class).getResultList();
//	}
//	

}
