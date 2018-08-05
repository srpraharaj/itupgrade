package com.ibm.itupgrade.models;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="isam_readiness")
public class IsamReadiness {
	
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private Integer slNo;
	private String activity;
	private String chgRecord;
	private String startTime;
	private String endTime;
	private String teamResponsible;
	private String taskStatus;
	private String issueReported;
	private String finalStatus;
	private String comments;
	public IsamReadiness(){
		
	}
	public IsamReadiness(Integer slNo, String activity, String chgRecord,
			String startTime, String endTime, String teamResponsible,
			String taskStatus, String issueReported, String finalStatus,
			String comments) {
		super();
		this.slNo = slNo;
		this.activity = activity;
		this.chgRecord = chgRecord;
		this.startTime = startTime;
		this.endTime = endTime;
		this.teamResponsible = teamResponsible;
		this.taskStatus = taskStatus;
		this.issueReported = issueReported;
		this.finalStatus = finalStatus;
		this.comments = comments;
	}
	public Integer getSlNo() {
		return slNo;
	}
	public void setSlNo(Integer slNo) {
		this.slNo = slNo;
	}
	public String getActivity() {
		return activity;
	}
	public void setActivity(String activity) {
		this.activity = activity;
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
	public String getIssueReported() {
		return issueReported;
	}
	public void setIssueReported(String issueReported) {
		this.issueReported = issueReported;
	}
	public String getFinalStatus() {
		return finalStatus;
	}
	public void setFinalStatus(String finalStatus) {
		this.finalStatus = finalStatus;
	}
	public String getComments() {
		return comments;
	}
	public void setComments(String comments) {
		this.comments = comments;
	}
	
}
