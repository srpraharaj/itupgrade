package com.ibm.itupgrade.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ibm.itupgrade.models.TeamDetails;
import com.ibm.itupgrade.repo.TeamDetailsRepo;

@Service
public class TeamDetailsServices {

	@Autowired
	private TeamDetailsRepo teamDetailsRepo;
	
	public List<TeamDetails> getAllTeams(){
		
		return (List<TeamDetails>) teamDetailsRepo.findAll();
	}
	
	public TeamDetails getTeam(int teamId){
		
		return teamDetailsRepo.findOne(teamId);
	}
	
	public void addTeam(TeamDetails team){
		teamDetailsRepo.save(team);
	}
	public void updateTeam(TeamDetails team, int teamId){
		teamDetailsRepo.save(team);
	}
	public void removeTeam(int teamId){
		teamDetailsRepo.delete(teamId);
	}
    public List<TeamDetails> getByTeamName(String teamName){
		
		return teamDetailsRepo.findByTeamName(teamName);
	}
} 
