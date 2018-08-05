package com.ibm.itupgrade.repo;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

import com.ibm.itupgrade.models.Teams;

public interface TeamsRepo extends CrudRepository<Teams,Integer>{

	List<Teams> findByTeamname(String teamName);
}
