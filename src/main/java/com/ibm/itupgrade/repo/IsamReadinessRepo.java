package com.ibm.itupgrade.repo;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

import com.ibm.itupgrade.models.IsamReadiness;

public interface IsamReadinessRepo extends CrudRepository<IsamReadiness,Integer>{

	List<IsamReadiness> findBySlNo(Integer slNo);
	
	List<Integer> findSlNoByTaskStatusIgnoreCase(String taskStatus);
}
