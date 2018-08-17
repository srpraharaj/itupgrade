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
import com.ibm.itupgrade.models.MiddlewareReadiness;
import com.ibm.itupgrade.services.MiddlewareReadinessServices;

@RestController
@RequestMapping("api/middleware")
public class MiddlewareReadinessController {

	@Autowired
	private MiddlewareReadinessServices dpServices;
	
	@GetMapping("/all")
	public Response getAllItems(){
		Iterable<MiddlewareReadiness> dp = dpServices.getAllItems();
		return new Response("Success",dp);
	}
	
	
	@GetMapping("/taskStatus")
	public ReadinessStatus middlewareReadinessDashboard(){
		return dpServices.generateCompletedTaskDetails();
	}
	
	@GetMapping("/{id}")
	public Response getItem(@PathVariable("id") int id){
		MiddlewareReadiness dp = dpServices.getItem(id);
		return new Response("Success",dp);
	}
	
	@GetMapping("/byId/{id}")
	public MiddlewareReadiness getItemById(@PathVariable("id") int id){
		
		return dpServices.getItem(id);
		
	}
	
	@PostMapping(value="/add")
	public void addItem(@RequestBody MiddlewareReadiness dp){
		dpServices.addItem(dp);
	}
	
	//@RequestMapping(method=RequestMethod.PUT,value="/teams/{id}")
	@PutMapping(value="/{id}")
	public void updateItem(@RequestBody MiddlewareReadiness dp,@PathVariable int id){
		dpServices.updateItem(dp,id);
	}
	
	//@RequestMapping(method=RequestMethod.DELETE,value="/teams/{id}")
	@DeleteMapping(value="/{id}")
	public void deleteItems(@PathVariable int id){
		dpServices.removeItem(id);
	}
}
