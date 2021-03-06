package com.ibm.itupgrade.models;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="issues")
public class Issues {
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int issueId;
	private String description;
	private String appName;
	private String appId;
	private String reportedTeamName;
	private String reportedTime;
	private String issueType;
	private String assignedTeam;
	private String status;
	private String resolvedTime;
	private String comments;
	public Issues(){
		
	}
	public Issues(int issueId, String description, String appName,String appId,
			String reportedTeamName, String reportedTime, String issueType,
			String assignedTeam, String status,
			String resolvedTime, String comments) {
		super();
		this.issueId = issueId;
		this.description = description;
		this.appName = appName;
		this.appId = appId;
		this.reportedTeamName = reportedTeamName;
		this.reportedTime = reportedTime;
		this.issueType = issueType;
		this.assignedTeam = assignedTeam;
		this.status = status;
		this.resolvedTime = resolvedTime;
		this.comments = comments;
	}
	public int getIssueId() {
		return issueId;
	}
	public void setIssueId(int issueId) {
		this.issueId = issueId;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public String getAppName() {
		return appName;
	}
	public void setAppName(String appName) {
		this.appName = appName;
	}
	public String getAppId() {
		return appId;
	}
	public void setAppId(String appId) {
		this.appId = appId;
	}
	public String getReportedTeamName() {
		return reportedTeamName;
	}
	public void setReportedTeamName(String reportedTeamName) {
		this.reportedTeamName = reportedTeamName;
	}
	public String getReportedTime() {
		return reportedTime;
	}
	public void setReportedTime(String reportedTime) {
		this.reportedTime = reportedTime;
	}
	public String getIssueType() {
		return issueType;
	}
	public void setIssueType(String issueType) {
		this.issueType = issueType;
	}
	public String getAssignedTeam() {
		return assignedTeam;
	}
	public void setAssignedTeam(String assignedTeam) {
		this.assignedTeam = assignedTeam;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public String getResolvedTime() {
		return resolvedTime;
	}
	public void setResolvedTime(String resolvedTime) {
		this.resolvedTime = resolvedTime;
	}
	public String getComments() {
		return comments;
	}
	public void setComments(String comments) {
		this.comments = comments;
	}
	
}
