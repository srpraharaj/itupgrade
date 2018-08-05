package com.ibm.itupgrade.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ibm.itupgrade.models.Issues;
import com.ibm.itupgrade.repo.IssuesRepo;

@Service
public class IssuesServices {

	@Autowired
	private IssuesRepo issueRepo;

	public List<Issues> getAllIssues() {

		return (List<Issues>) issueRepo.findAll();
	}

	public Issues getIssue(int issueId) {

		return issueRepo.findOne(issueId);
	}

	public void addIssue(Issues issue) {
		issueRepo.save(issue);
	}

	public void updateIssue(Issues issue, int issueId) {
		issueRepo.save(issue);
	}

	public void removeIssue(int issueId) {
		issueRepo.delete(issueId);
	}
}
