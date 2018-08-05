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
import com.ibm.itupgrade.models.ApplicationDetails;
import com.ibm.itupgrade.services.ApplicationDetailsService;

@RestController
@RequestMapping("api/appdetails")
public class ApplicationDetailsController {

	@Autowired
	private ApplicationDetailsService appService;
	
	
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
	}
}
