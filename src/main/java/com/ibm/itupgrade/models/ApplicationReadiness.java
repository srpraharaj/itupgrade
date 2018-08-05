package com.ibm.itupgrade.models;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="app_readiness")
public class ApplicationReadiness {
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int activityId;
	private String activityGroup;   
	private String activityName;
	private String chgRecord;
	private String startTime;
	private String endTime;
	private String teamResponsible;
	private String taskStatus;
	private String verificationStatus;
	private String havingIssue;
	private Integer issueId;
	private String  finalStatus;
	public ApplicationReadiness(){
		
	}
	public ApplicationReadiness(int activityId, String activityGroup,
			String activityName, String chgRecord, String startTime,
			String endTime, String teamResponsible, String taskStatus,
			String verificationStatus, String havingIssue, Integer issueId,
			String finalStatus) {
		super();
		this.activityId = activityId;
		this.activityGroup = activityGroup;
		this.activityName = activityName;
		this.chgRecord = chgRecord;
		this.startTime = startTime;
		this.endTime = endTime;
		this.teamResponsible = teamResponsible;
		this.taskStatus = taskStatus;
		this.verificationStatus = verificationStatus;
		this.havingIssue = havingIssue;
		this.issueId = issueId;
		this.finalStatus = finalStatus;
	}
	public int getActivityId() {
		return activityId;
	}
	public void setActivityId(int activityId) {
		this.activityId = activityId;
	}
	public String getActivityGroup() {
		return activityGroup;
	}
	public void setActivityGroup(String activityGroup) {
		this.activityGroup = activityGroup;
	}
	public String getActivityName() {
		return activityName;
	}
	public void setActivityName(String activityName) {
		this.activityName = activityName;
	}
	public String getChgRecord() {
		return chgRecord;
	}
	public void setChgRecord(String chgRecord) {
		this.chgRecord = chgRecord;
	}
	public String getStartTime() {
		return startTime;
	}
	public void setStartTime(String startTime) {
		this.startTime = startTime;
	}
	public String getEndTime() {
		return endTime;
	}
	public void setEndTime(String endTime) {
		this.endTime = endTime;
	}
	public String getTeamResponsible() {
		return teamResponsible;
	}
	public void setTeamResponsible(String teamResponsible) {
		this.teamResponsible = teamResponsible;
	}
	public String getTaskStatus() {
		return taskStatus;
	}
	public void setTaskStatus(String taskStatus) {
		this.taskStatus = taskStatus;
	}
	public String getVerificationStatus() {
		return verificationStatus;
	}
	public void setVerificationStatus(String verificationStatus) {
		this.verificationStatus = verificationStatus;
	}
	public String getHavingIssue() {
		return havingIssue;
	}
	public void setHavingIssue(String havingIssue) {
		this.havingIssue = havingIssue;
	}
	public Integer getIssueId() {
		return issueId;
	}
	public void setIssueId(Integer issueId) {
		this.issueId = issueId;
	}
	public String getFinalStatus() { 
		return finalStatus;
	}
	public void setFinalStatus(String finalStatus) {
		this.finalStatus = finalStatus;
	}
	
}
