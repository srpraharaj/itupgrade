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

import com.ibm.itupgrade.message.ReadinessStatus;
import com.ibm.itupgrade.models.IsamReadiness;
import com.ibm.itupgrade.services.IsamReadinessService;

@RestController
@RequestMapping("api/isamactivities")
public class IsamReadinessController {

	@Autowired
	private IsamReadinessService isamService;
	
	@GetMapping("/all")
	public List<IsamReadiness> getAllActivities(){
		//isamService.findCompletedTaskId("completed");
		return isamService.getAllActivities();
	}
	
	@GetMapping("/taskstatus")
	public ReadinessStatus isamReadinessDashboard(){
		return isamService.generateCompletedTaskDetails();
	}
	
	@GetMapping("/{appId}")
	public IsamReadiness getActivityById(@PathVariable("appId") int id){
		
		return isamService.getActivityDetails(id);
		
	}
	
	@PostMapping(value="/add")
	public void addActivity(@RequestBody IsamReadiness isamActivity){
		isamService.addActivityStatus(isamActivity);
	}
	
	@PutMapping(value="/{id}")
	public void updateActivity(@RequestBody IsamReadiness isamActivity,@PathVariable int id){
		isamService.updateActivityStatus(isamActivity, id);
	}
	
	@DeleteMapping(value="/{id}")
	public void deleteActivity(@PathVariable int id){
		isamService.removeActivity(id);
	}
	
	
}
