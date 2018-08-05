package com.ibm.itupgrade.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.ibm.itupgrade.services.ApplicationDetailsService;
import com.ibm.itupgrade.services.ApplicationReadinessServices;
import com.ibm.itupgrade.services.ApplicationStatusService;
import com.ibm.itupgrade.services.IsamReadinessService;
import com.ibm.itupgrade.services.IssuesServices;
import com.ibm.itupgrade.services.MiddlewareReadinessServices;
import com.ibm.itupgrade.services.TeamDetailsServices;

@Controller
public class MainController {
	
	
	@Autowired
	private TeamDetailsServices teamService;
	@Autowired
	private IssuesServices issueService;
	@Autowired
	private IsamReadinessService isamService;
	@Autowired
	private ApplicationReadinessServices appReadinessService;
	@Autowired
	private MiddlewareReadinessServices dpService;
	@Autowired
	private ApplicationStatusService appStatus;
	@Autowired
	private ApplicationDetailsService appDetails;
	
	
	@RequestMapping("/")
	public ModelAndView redirectHomePage(){
		ModelAndView mv = new ModelAndView( "Homepage");
		mv.addObject("teamList",teamService.getAllTeams());
		mv.addObject("issueList",issueService.getAllIssues());
		mv.addObject("isamactivityList", isamService.getAllActivities());
		mv.addObject("middlewareActivityList", dpService.getAllItems());
		mv.addObject("appReadinessList", appReadinessService.getAllItems());
		mv.addObject("appStatusList", appStatus.getAllAppStatus());
		mv.addObject("appDetails", appDetails.getAllAppDetails());
		return mv;
	}
	@RequestMapping("/appDetails")
	public ModelAndView appDetailsView(){
		ModelAndView mv = new ModelAndView("appDetails");
		mv.addObject("appDetails", appDetails.getAppDetails(1));
		return mv;
	}
	@RequestMapping("/test")
	public ModelAndView doHome(){
		ModelAndView mv = new ModelAndView( "test");
		mv.addObject("issueList",issueService.getAllIssues());
		return mv;
	}
	
	/*@RequestMapping("/isamActivities")
	public ModelAndView isamReadiness(){
		ModelAndView mv = new ModelAndView("isamReadiness");
		mv.addObject("isamactivityList", isamService.getAllActivities());
		return mv;
	}
	@RequestMapping("/middlewareActivities")
	public ModelAndView middlewareReadiness(){
		ModelAndView mv = new ModelAndView("middlewareActivities");
		mv.addObject("middlewareActivityList", dpService.getAllItems());
		return mv;
	}

*/
}
