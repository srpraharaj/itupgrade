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
import com.ibm.itupgrade.models.TeamDetails;
import com.ibm.itupgrade.services.TeamDetailsServices;

@RestController
@RequestMapping("test/api/teams")
public class TeamDetailsController {

	@Autowired
	private TeamDetailsServices teamService;
	
	@GetMapping("/all")
	public Response getAllTeams(){
		Iterable<TeamDetails> teams = teamService.getAllTeams();
		return new Response("Done",teams);
	}
	@GetMapping("/{id}")
	public Response getTeam(@PathVariable("id") int id){
		TeamDetails team = teamService.getTeam(id);
		return new Response("Done",team);
	}
	
	@GetMapping("/byId/{id}")
	public TeamDetails getTeamById(@PathVariable("id") int id){
		
		return teamService.getTeam(id);
		
	}
	
	@PostMapping(value="/add")
	public void addTopic(@RequestBody TeamDetails team){
		teamService.addTeam(team);
	}
	
	//@RequestMapping(method=RequestMethod.PUT,value="/teams/{id}")
	@PutMapping(value="/{id}")
	public void updateTopic(@RequestBody TeamDetails team,@PathVariable int id){
		teamService.updateTeam(team,id);
	}
	
	//@RequestMapping(method=RequestMethod.DELETE,value="/teams/{id}")
	@DeleteMapping(value="/{id}")
	public void deleteTeams(@PathVariable int id){
		teamService.removeTeam(id);
	}
	
	@GetMapping("/byName/{teamName}")
	public Response getByTeamName(@PathVariable("teamName") String teamName){
		List<TeamDetails> team = teamService.getByTeamName(teamName);
		return new Response("Done",team);
	}
}
