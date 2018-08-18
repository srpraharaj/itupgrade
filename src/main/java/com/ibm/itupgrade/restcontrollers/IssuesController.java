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

import com.ibm.itupgrade.message.IssueStatus;
import com.ibm.itupgrade.message.Response;
import com.ibm.itupgrade.models.Issues;
import com.ibm.itupgrade.services.IssuesServices;

@RestController
@RequestMapping("api/issues")
public class IssuesController {

	@Autowired
	private IssuesServices issueService;
	
	@GetMapping("/all")
	public Response getAllIssues(){
		Iterable<Issues> issue = issueService.getAllIssues();
		return new Response("Done",issue);
	}
	
	@GetMapping("/status")
	public IssueStatus generateIssueDetails(){
		return issueService.generateIssueDetails();
	}
	
	@GetMapping("/{id}")
	public Response getIssue(@PathVariable("id") int id){
		Issues issue = issueService.getIssue(id);
		return new Response("Done",issue);
	}
	
	@GetMapping("/byId/{id}")
	public Issues getIssueById(@PathVariable("id") int id){
		
		return issueService.getIssue(id);
		
	}
	
	@PostMapping(value="/add")
	public void addIssue(@RequestBody Issues issue){
		issueService.addIssue(issue);
	}
	
	//@RequestMapping(method=RequestMethod.PUT,value="/teams/{id}")
	@PutMapping(value="/{id}")
	public void updateIssue(@RequestBody Issues issue,@PathVariable int id){
		issueService.updateIssue(issue,id);
	}
	
	//@RequestMapping(method=RequestMethod.DELETE,value="/teams/{id}")
	@DeleteMapping(value="/{id}")
	public void deleteIssue(@PathVariable int id){
		issueService.removeIssue(id);
	}
	
	/*@GetMapping("/byName/{teamName}")
	public Response getByTeamName(@PathVariable("teamName") String teamName){
		List<Teams> team = teamService.getByTeamName(teamName);
		return new Response("Done",team);
	}*/
}
