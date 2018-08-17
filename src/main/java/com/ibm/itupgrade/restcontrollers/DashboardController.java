package com.ibm.itupgrade.restcontrollers;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.ibm.itupgrade.message.IssueStatus;
import com.ibm.itupgrade.message.ReadinessStatus;
import com.ibm.itupgrade.message.Response;
import com.ibm.itupgrade.message.VerificationStatus;
import com.ibm.itupgrade.services.ApplicationReadinessServices;
import com.ibm.itupgrade.services.ApplicationStatusService;
import com.ibm.itupgrade.services.IsamReadinessService;
import com.ibm.itupgrade.services.IssuesServices;
import com.ibm.itupgrade.services.MiddlewareReadinessServices;

@RestController
@RequestMapping("api/dashboard")
public class DashboardController {

	/*@Autowired
	private ApplicationDetailsService appService;*/
	@Autowired
	private MiddlewareReadinessServices dpServices;
	@Autowired
	private IsamReadinessService isamServices;
	@Autowired
	private ApplicationReadinessServices appServices;
	@Autowired
	private ApplicationStatusService appStatus;
	@Autowired
	private IssuesServices issueService;
	
	@GetMapping("/readiness")
	public Response getReadinessStatus(){
	ReadinessStatus middleware = dpServices.generateCompletedTaskDetails();
	ReadinessStatus isam = isamServices.generateCompletedTaskDetails();
	ReadinessStatus wasApp = appServices.generateCompletedTaskDetails("was");
	ReadinessStatus other = appServices.generateCompletedTaskDetails(".net");
	List<ReadinessStatus> list = new ArrayList<>();
	list.add(middleware);
	list.add(isam);
	list.add(wasApp);
	list.add(other);
	return new Response("Success" , list);
	}
	
	@GetMapping("/verification")
	public Response getVerificationStatus(){
		VerificationStatus isam = isamServices.getAppVerificationStatus();
		VerificationStatus was = appStatus.getAppVerificationStatus("was");
		VerificationStatus net = appStatus.getAppVerificationStatus(".net");
		VerificationStatus sharepoint = appStatus.getAppVerificationStatus("sharepoint");
		
		List<VerificationStatus> list = new ArrayList<>();
		list.add(isam);
		list.add(was);
		list.add(net);
		list.add(sharepoint);
		return new Response("Success" , list);
	}
	
	@GetMapping("/issuestatus")
	public Response generateIssueDetails(){
		IssueStatus issues = issueService.generateIssueDetails();
		return new Response("Success" , issues);
	}
	
	
	/*
	@GetMapping("/all")
	public Response getAllAppDetails(){
		Iterable<ApplicationDetails> appDetails =  appService.getAllAppDetails();
		return new Response("Sucess" , appDetails);
	}
	
	@GetMapping("/{appId}")
	public Response getAppDetails(@PathVariable("appId") int id){
		ApplicationDetails appDetails = appService.getAppDetails(id);
		return new Response("Sucesss",appDetails);
	}
	
	@GetMapping("/byid/{appId}")
	public ApplicationDetails getAppDetailsById(@PathVariable("appId") int id){
		
		return appService.getAppDetails(id);
		
	}
	
	@PostMapping(value="/add")
	public void addAppDetails(@RequestBody ApplicationDetails appDetails){
		appService.addAppDetails(appDetails);
	}
	
	//@RequestMapping(method=RequestMethod.PUT,value="/teams/{id}")
	@PutMapping(value="/{id}")
	public void updateAppDetails(@RequestBody ApplicationDetails appDetails,@PathVariable int id){
		appService.updateAppDetails(appDetails, id);
	}
	
	//@RequestMapping(method=RequestMethod.DELETE,value="/teams/{id}")
	@DeleteMapping(value="/{id}")
	public void deleteAppDetails(@PathVariable int id){
		appService.removeAppDetails(id);
	}
	
	@GetMapping("/byName/{appName}")
	public Response getByAppName(@PathVariable("appName") String appName){
		List<ApplicationDetails> appDetails = appService.findDetailsByAppName(appName);
		return new Response("Success",appDetails);
	}*/
}
