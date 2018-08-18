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
import com.ibm.itupgrade.models.OngoingActivities;
import com.ibm.itupgrade.services.OngoingActivitiesServices;

@RestController
@RequestMapping("api/activities")
public class OngoingActivitiesController {

	@Autowired
	private OngoingActivitiesServices activitiesService;
	
	
	@GetMapping("/all")
	public Response getAllActivities(){
		Iterable<OngoingActivities> activities =  activitiesService.getAllActivitiesDetails();
		return new Response("Sucess" , activities);
	}
	
	@GetMapping("/{slNo}")
	public Response getActivity(@PathVariable("slNo") int slNo){
		OngoingActivities activities = activitiesService.getAppDetails(slNo);
		return new Response("Sucesss",activities);
	}
	
	@GetMapping("/byid/{appId}")
	public OngoingActivities getActivityById(@PathVariable("appId") int id){
		
		return activitiesService.getAppDetails(id);
		
	}
	
	@PostMapping(value="/add")
	public void addActivities(@RequestBody OngoingActivities activities){
		activitiesService.addActivitiesDetails(activities);
	}
	
	@PutMapping(value="/{id}")
	public void updateActivity(@RequestBody OngoingActivities activity,@PathVariable int id){
		activitiesService.updateActivitiesDetails(activity, id);
	}
	
	@DeleteMapping(value="/{slNo}")
	public void deleteActivity(@PathVariable int slNo){
		activitiesService.removeActivitiesDetails(slNo);
	}
	
	@GetMapping("/{status}")
	public Response getByStatus(@PathVariable("status") String status){
		List<OngoingActivities> activities = activitiesService.findActivityDetailsByStatus(status);
		return new Response("Success",activities);
	}
}
