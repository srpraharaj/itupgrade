package com.ibm.itupgrade.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ibm.itupgrade.models.Teams;
import com.ibm.itupgrade.repo.TeamsRepo;

@Service
public class TeamsServices {

	@Autowired
	private TeamsRepo teamsRepo;
	
	public List<Teams> getAllTeams(){
		
		return (List<Teams>) teamsRepo.findAll();
	}
	
	public Teams getTeam(int teamId){
		
		return teamsRepo.findOne(teamId);
	}
	
	public void addTeam(Teams team){
		teamsRepo.save(team);
	}
	public void updateTeam(Teams team, int teamId){
		teamsRepo.save(team);
	}
	public void removeTeam(int teamId){
		teamsRepo.delete(teamId);
	}
    public List<Teams> getByTeamName(String teamName){
		
		return teamsRepo.findByTeamname(teamName);
	}
}
