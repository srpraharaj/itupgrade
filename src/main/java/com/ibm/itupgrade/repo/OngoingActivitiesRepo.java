package com.ibm.itupgrade.repo;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

import com.ibm.itupgrade.models.OngoingActivities;

public interface OngoingActivitiesRepo extends CrudRepository<OngoingActivities,Integer>{

	List<OngoingActivities> findByStatusIgnoreCase(String status);
}
