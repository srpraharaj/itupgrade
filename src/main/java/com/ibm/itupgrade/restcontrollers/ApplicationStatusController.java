package com.ibm.itupgrade.restcontrollers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.ibm.itupgrade.message.Response;
import com.ibm.itupgrade.models.ApplicationStatus;
import com.ibm.itupgrade.services.ApplicationStatusService;

@RestController
@RequestMapping("api/appstatus")
public class ApplicationStatusController {

	@Autowired
	private ApplicationStatusService appService;
	
	
	@GetMapping("/all")
	public Response getAllAppStatus(){
		Iterable<ApplicationStatus> appStatus =  appService.getAllAppStatus();
		return new Response("Sucess" , appStatus);
	}
	
	@GetMapping("/{appId}")
	public Response getAppStatus(@PathVariable("appId") int id){
		ApplicationStatus appStatus = appService.getAppStatus(id);
		return new Response("Sucesss",appStatus);
	}
	
	@GetMapping("/byid/{appId}")
	public ApplicationStatus getAppStatusById(@PathVariable("appId") int id){
		
		return appService.getAppStatus(id);
		
	}
	
	@PostMapping(value="/add")
	public void addAppStatus(@RequestBody ApplicationStatus appStatus){
		appService.addAppStatus(appStatus);
	}
	
	@PutMapping(value="/{id}")
	public void updateAppStatus(@RequestBody ApplicationStatus appStatus,@PathVariable int id){
		appService.updateAppStatus(appStatus, id);
	}
	
	@DeleteMapping(value="/{id}")
	public void deleteAppStatus(@PathVariable int id){
		appService.removeAppStatus(id);
	}
	
	@GetMapping("/byName/{appName}")
	public Response getByAppName(@PathVariable("appName") String appName){
		List<ApplicationStatus> appStatus = appService.findStatusByAppName(appName);
		return new Response("Success",appStatus);
	}
}
