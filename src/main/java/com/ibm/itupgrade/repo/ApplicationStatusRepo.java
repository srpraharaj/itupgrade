package com.ibm.itupgrade.repo;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

import com.ibm.itupgrade.models.ApplicationStatus;

public interface ApplicationStatusRepo extends CrudRepository<ApplicationStatus,Integer>{

	List<ApplicationStatus> findByAppName(String appName);
}
