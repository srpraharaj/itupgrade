package com.ibm.itupgrade.repo;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

import com.ibm.itupgrade.models.Issues;

public interface IssuesRepo extends CrudRepository<Issues, Integer>{

	List<Integer> findIssueIdByIssueTypeIgnoreCase(String issueType);
	List<Integer> findIssueIdByStatusIgnoreCase(String status);
	
}
