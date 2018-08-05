package com.ibm.itupgrade.models;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="middleware")
public class MiddlewareReadiness {

	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int activityId;
	private String componentType;   
	private String activityName;
	private String chgRecord;
	private String startTime;
	private String endTime;
	private String teamResponsible;
	private String changeStatus;
	private String verificationStatus;
	private String havingIssue;
	private Integer issueId;
	private String  finalStatus;
	public MiddlewareReadiness(){
		
	}
	public MiddlewareReadiness(int activityId, String componentType,
			String activityName, String chgRecord, String startTime,
			String endTime, String teamResponsible, String changeStatus,
			String verificationStatus, String havingIssue, Integer issueId,
			String finalStatus) {
		super();
		this.activityId = activityId;
		this.componentType = componentType;
		this.activityName = activityName;
		this.chgRecord = chgRecord;
		this.startTime = startTime;
		this.endTime = endTime;
		this.teamResponsible = teamResponsible;
		this.changeStatus = changeStatus;
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
	public String getComponentType() {
		return componentType;
	}
	public void setComponentType(String componentType) {
		this.componentType = componentType;
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
	public String getChangeStatus() {
		return changeStatus;
	}
	public void setChangeStatus(String changeStatus) {
		this.changeStatus = changeStatus;
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
