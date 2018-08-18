package com.ibm.itupgrade.services;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ibm.itupgrade.message.IssueStatus;
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

	public IssueStatus generateIssueDetails() {
		IssueStatus status = new IssueStatus();
		int totalIssues, resolved, inProgress, infraIssues, progress = 0;
		List<Issues> totalList = new ArrayList<>();
		totalList = (List<Issues>) issueRepo.findAll();
		totalIssues = totalList.size();
		resolved = issueRepo.findIssueIdByStatusIgnoreCase("resolved").size();
		inProgress = totalIssues - resolved;
		if (totalIssues != 0) {
			progress = (resolved * 100) / totalIssues;
		}
		infraIssues = issueRepo.findIssueIdByIssueTypeIgnoreCase("infra").size();

		status.setTotalIssue(totalIssues);
		status.setInfraIssue(infraIssues);
		status.setAppIssue(totalIssues - infraIssues);
		status.setPending(inProgress);
		status.setResolved(resolved);
		status.setProgress(progress);

		return status;
	}
}
