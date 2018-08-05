package com.ibm.itupgrade.repo;

import org.springframework.data.repository.CrudRepository;

import com.ibm.itupgrade.models.Issues;

public interface IssuesRepo extends CrudRepository<Issues, Integer>{

}
