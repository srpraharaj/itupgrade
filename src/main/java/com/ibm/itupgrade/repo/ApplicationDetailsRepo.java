package com.ibm.itupgrade.repo;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

import com.ibm.itupgrade.models.ApplicationDetails;

public interface ApplicationDetailsRepo extends CrudRepository<ApplicationDetails,Integer>{

	List<ApplicationDetails> findByAppName(String appName);
}
