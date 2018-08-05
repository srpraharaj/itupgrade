package com.ibm.itupgrade.repo;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

import com.ibm.itupgrade.models.TeamDetails;

public interface TeamDetailsRepo extends CrudRepository<TeamDetails,Integer>{

	List<TeamDetails> findByTeamName(String teamName);
}
