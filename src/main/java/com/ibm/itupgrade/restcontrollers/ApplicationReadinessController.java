package com.ibm.itupgrade.restcontrollers;

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
import com.ibm.itupgrade.message.Response;
import com.ibm.itupgrade.models.ApplicationReadiness;
import com.ibm.itupgrade.services.ApplicationReadinessServices;

@RestController
@RequestMapping("api/appreadiness")
public class ApplicationReadinessController {

	@Autowired
	private ApplicationReadinessServices appServices;
	
	@GetMapping("/all")
	public Response getAllItems(){
		Iterable<ApplicationReadiness> app = appServices.getAllItems();
		return new Response("Success",app);
	}
	
	@GetMapping("/taskstatus/{type}")
	public ReadinessStatus applicationReadinessDashboard(@PathVariable("type") String type){
		return appServices.generateCompletedTaskDetails(type);
	}
	
	@GetMapping("/{id}")
	public Response getItem(@PathVariable("id") int id){
		ApplicationReadiness app = appServices.getItem(id);
		return new Response("Success",app);
	}
	
	@GetMapping("/byId/{id}")
	public ApplicationReadiness getItemById(@PathVariable("id") int id){
		
		return appServices.getItem(id);
		
	}
	
	@PostMapping(value="/add")
	public void addItem(@RequestBody ApplicationReadiness app){
		appServices.addItem(app);
	}
	
	//@RequestMapping(method=RequestMethod.PUT,value="/teams/{id}")
	@PutMapping(value="/{id}")
	public void updateItem(@RequestBody ApplicationReadiness app,@PathVariable int id){
		appServices.updateItem(app,id);
	}
	
	//@RequestMapping(method=RequestMethod.DELETE,value="/teams/{id}")
	@DeleteMapping(value="/{id}")
	public void deleteItems(@PathVariable int id){
		appServices.removeItem(id);
	}
}
