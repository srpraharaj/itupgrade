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
import com.ibm.itupgrade.models.OngoingActivities;
import com.ibm.itupgrade.services.ApplicationReadinessServices;
import com.ibm.itupgrade.services.ApplicationStatusService;
import com.ibm.itupgrade.services.IsamReadinessService;
import com.ibm.itupgrade.services.IssuesServices;
import com.ibm.itupgrade.services.MiddlewareReadinessServices;
import com.ibm.itupgrade.services.OngoingActivitiesServices;

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
	@Autowired
	private OngoingActivitiesServices activitiesService;
	
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
	
	@GetMapping("/ongoingactivities")
	public Response getOngoingActivitiesStatus(){
		List<OngoingActivities> inprogress = activitiesService.findActivityDetailsByStatus("in progress");
		List<OngoingActivities> issue = activitiesService.findActivityDetailsByStatus("issue");
		List<OngoingActivities> list = new ArrayList<>();
		list.addAll(inprogress);
		list.addAll(issue);
		return new Response("Success" , list);
	}
}
