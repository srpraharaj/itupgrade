package com.ibm.itupgrade.repo;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

import com.ibm.itupgrade.models.ApplicationStatus;

public interface ApplicationStatusRepo extends CrudRepository<ApplicationStatus,Integer>{

	List<ApplicationStatus> findByAppName(String appName);
	List<Integer> findAppIdByRuntimeIgnoreCase(String runtime);
	List<Integer> findAppIdByRuntimeIgnoreCaseAndAppTestingIgnoreCase(String runtime, String appTesting);
	List<Integer> findAppIdByRuntimeIgnoreCaseAndBusinessTestingIgnoreCase(String runtime, String businessTesting);
	List<Integer> findAppIdByRuntimeIgnoreCaseAndBusinessSignoffIgnoreCase(String runtime, String businessSignoff);
}
