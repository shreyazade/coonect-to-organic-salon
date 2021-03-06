package com.app.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.app.dao.EmployeeDao;
import com.app.dao.IShopkeeperDao;
import com.app.pojos.Employee;
import com.app.pojos.Services;
import com.app.pojos.Shops;
import com.app.pojos.Slots;
import com.app.pojos.Users;

@Controller
@RequestMapping("/shopkeeper")
public class ShopkeeperController {
	
	@Autowired 
	private IShopkeeperDao dao;
	
	
	@Autowired
	private EmployeeDao emp;
	
	@GetMapping("/appointments")
	public  String getAppointmets(HttpSession hs,Model map)
	{
		String appstatus="No Appointment Avilable";
		map.addAttribute("appstatus",appstatus);
		Users u= (Users) hs.getAttribute("user_dtls");
		try {
		Shops shop=dao.getShopByOwnerName(u.getUserName());
		hs.setAttribute("shop", shop);
		map.addAttribute("alist",dao.appointmetsList(u.getUserName()));
		 appstatus="";
		 map.addAttribute("appstatus",appstatus);
		return "/shopkeeper/appointments";
		}
		catch(Exception e)
		{
			
			return "/shopkeeper/appointments";
		}
	}
//	@GetMapping("/appointments")
//	public  String getAppointmets(HttpSession hs,Model map)
//	{
//		String appstatus="No Appointment Avilable";
//		map.addAttribute("appstatus",appstatus);
//		Users u= (Users) hs.getAttribute("user_dtls");
//		try {
//		Shops shop=dao.getShopByOwnerName(u.getUserName());
//		Users user=dao.getUserByUserId(u.getUserId());
//		hs.setAttribute("shop", shop);
//		map.addAttribute("alist",dao.appointmetsList(u.getUserName(),u.getUserId()));
//		 appstatus="";
//		 map.addAttribute("appstatus",appstatus);
//		return "/shopkeeper/appointments";
//		}
//		catch(Exception e)
//		{
//			
//			return "/shopkeeper/appointments";
//		}
//	}
	

	@GetMapping("/services")
	public String showServicesList(Model map,HttpSession hs) {
		System.out.println("in show services list");
		Users u= (Users) hs.getAttribute("user_dtls");
		map.addAttribute("services_list",dao.getServiceList(u.getUserName()));
		return "/shopkeeper/services";
	}
	
	@GetMapping("/slots")
	public String showSlotsList(Model map,HttpSession hs) {
		System.out.println("in show slots list");
		Users u= (Users) hs.getAttribute("user_dtls");
		map.addAttribute("slots_list",dao.getSlotsList(u.getUserName()));
		return "/shopkeeper/slots";
	}

	@GetMapping("/addservice")
	public String addServices(Services s)
	{
	System.out.println("In service add form");
		
		return "/shopkeeper/addservice";
	}
	
	@PostMapping("/addservice")
	public String processServiceRegForm( Services s, RedirectAttributes flashMap,HttpSession hs) {
		s.setShop((Shops)hs.getAttribute("shop"));
		System.out.println("in process service reg form " + s);// transient
		flashMap.addFlashAttribute("mesg", dao.addService(s));
		return "redirect:/shopkeeper/services";
	}
	
	@GetMapping("/addslot")
	public String addSlot(Slots s)
	{
	System.out.println("In slot add form");
		
		return "/shopkeeper/addslot";
	}
	
	@PostMapping("/addslot")
	public String processSlotRegForm( Slots s, RedirectAttributes flashMap,HttpSession hs) {
		
		s.setShop((Shops)hs.getAttribute("shop"));
		System.out.println("in process slot reg form " + s);// transient
		flashMap.addFlashAttribute("mesg", dao.addSlot(s));
		return "redirect:/shopkeeper/slots";
	}
	
	@GetMapping("/removeservice")
	public String removeService(@RequestParam int sid,HttpSession hs,RedirectAttributes flashMap,Model map)
	{
		System.out.println("in del service " + sid);
		flashMap.addFlashAttribute("mesg", dao.removeService(sid));
		System.out.println("Atter removed..................." + sid);
		Users u= (Users) hs.getAttribute("user_dtls");
		map.addAttribute("services_list",dao.getServiceList(u.getUserName()));
		return "redirect:/shopkeeper/services";
	}
	
	@GetMapping("/removeslot")
	public String removeSlot(@RequestParam int sid,HttpSession hs,RedirectAttributes flashMap,Model map)
	{
		System.out.println("in del slot " + sid);
		flashMap.addFlashAttribute("mesg", dao.removeSlot(sid));
		Users u= (Users) hs.getAttribute("user_dtls");
		map.addAttribute("slots_list",dao.getSlotsList(u.getUserName()));
		return "redirect:/shopkeeper/slots";
	}
	
	
	@GetMapping("/updateservice")
	public String showUpdateServiceForm(@RequestParam int sid,HttpSession hs,Model map)
	{
		Services service=dao.getServicesByServiceId(sid);
		hs.setAttribute("updateservices", service);
		map.addAttribute("service_detalis",service);
		System.out.println("in service Update form");
		hs.setAttribute("service_update",sid);
		return "/shopkeeper/updateservice";
	}
	@PostMapping("/updateservice")
	public String ProcessUpdateServiceForm(@RequestParam String serviceName,@RequestParam String serviceDescription,@RequestParam double servicePrice,@RequestParam String serviceDuration,HttpSession hs,Model map)
	{
		System.out.println("in Srvice process Update form");
		
		Services service= (Services) hs.getAttribute("updateservices");
		service.setServiceName(serviceName);
		service.setServiceDescription(serviceDescription);
		service.setServiceDuration(serviceDuration);
		service.setServicePrice(servicePrice);
		map.addAttribute("updatestatus",dao.updateService(service));
		return "redirect:/shopkeeper/services";
	}
	
	@GetMapping("/updateslot")
	public String showUpdateSlotForm(@RequestParam int sid,HttpSession hs,Model map)
	{
		Slots slot=dao.getSlotBySlotsId(sid);
		hs.setAttribute("updateslot", slot);
		map.addAttribute("slot_detalis",slot);
		System.out.println("in slot Update form");
		hs.setAttribute("slot_update",sid);
		return "/shopkeeper/updateslot";
	}
	@PostMapping("/updateslot")
	public String ProcessUpdateSlotForm(@RequestParam String slotName,@RequestParam String slotTime,@RequestParam int chaireAvilable,@RequestParam int slotSequence,HttpSession hs,Model map)
	{
		System.out.println("in slot process Update form");
		
		Slots slot=(Slots) hs.getAttribute("updateslot");
		slot.setSlotName(slotName);
		slot.setSlotTime(slotTime);
		slot.setChaireAvilable(chaireAvilable);
		slot.setSlotSequence(slotSequence);
		map.addAttribute("updatestatus",dao.updateSlot(slot));
		return "redirect:/shopkeeper/slots";
	}

	
	@GetMapping("/employee")
	public String showEmployeeList(Model map,HttpSession hs) {
		System.out.println("in show services list");
		Users u= (Users) hs.getAttribute("user_dtls");
		map.addAttribute("employee_list",dao.getEmployeeList(u.getUserName()));
		return "/shopkeeper/employee";
	}
	
	
//	@GetMapping("/deleteemployee")
//	public String removeEmployee(@RequestParam int eid,RedirectAttributes flashMap,Model map,HttpSession hs) {
//		System.out.println("in delete employee"+ eid);
//		flashMap.addFlashAttribute("mesg",emp.removeEmployee(eid));
//		System.out.println("Atter removed..................." + eid);
//		Users u= (Users) hs.getAttribute("user_dtls");
//		map.addAttribute("employee_list",emp.getEmployeeList(u.getUserName()));
//		return "redirect:/shopkeeper/employee";
//		
//	}
	
	@GetMapping("/removeemployee")
	public String removeEmployee(@RequestParam int eid,HttpSession hs,RedirectAttributes flashMap,Model map)
	{
		System.out.println("in del employee " + eid);
		flashMap.addFlashAttribute("mesg", dao.removeEmployee(eid));
		System.out.println("After removed..................." + eid);
//		Users u= (Users) hs.getAttribute("user_dtls");
			map.addAttribute("employee_list",dao.getEmployeeByEmpId(eid));
		return "/shopkeeper/employee";
	}
	
	
	
	
	@GetMapping("/addemployee")
	public String addNewEmployee(Employee e)
	{
	System.out.println("in new employee addition form ");
		
		return "/shopkeeper/addemployee";
	}
	

	
	@PostMapping("/addemployee")
	public String processRegForm(Employee e,RedirectAttributes flashMap,HttpSession hs) {
		//new line
		e.setShop((Shops)hs.getAttribute("shop"));
		System.out.println("in process of new employee addition form " + e);// transient
		flashMap.addFlashAttribute("mesg", emp.addNewEmployee(e));
		
		
	    return "redirect:/shopkeeper/employee";
		
	}

	@GetMapping("/updateemployee")
	public String showUpdateEmployeeForm(@RequestParam int eid,HttpSession hs,Model map)
	{
       Employee employee=dao.getEmployeeByEmpId(eid);
       hs.setAttribute("updateemployee",employee);
       map.addAttribute("employee_detalis",employee);
      System.out.println("in employee update form");
      hs.setAttribute("employee_update",eid);
       return "/shopkeeper/updateemployee";
       
	}
	
	@PostMapping("/updateemployee")
	public String ProcessUpdateEmployeeForm(@RequestParam String empName,@RequestParam String empMobNo,@RequestParam String empExperience,
			String salonName,String status,HttpSession hs,Model map)
	{
		System.out.println("in employee Update form");
		
		Employee employee=(Employee) hs.getAttribute("updateemployee");
		employee.setEmpName(empName);
		employee.setEmpExperience(empExperience);
		employee.setEmpMobNo(empMobNo);
		employee.setSalonName(salonName);
		employee.setStatus(status);
		
		map.addAttribute("updatestatus",dao.updateEmployee(employee));
		return "redirect:/shopkeeper/employee";
	
	}
	

	
}
