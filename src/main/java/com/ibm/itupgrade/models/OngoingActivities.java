package com.ibm.itupgrade.models;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="ongoing_activities")
public class OngoingActivities {

	@Id
	private Integer slNo;
	private String activityDetails;
	private String startTime;
	private String endTime;
	private String status;
	public OngoingActivities() {
		
	}
	public OngoingActivities(Integer slNo, String activityDetails, String startTime, String endTime, String status) {
		super();
		this.slNo = slNo;
		this.activityDetails = activityDetails;
		this.startTime = startTime;
		this.endTime = endTime;
		this.status = status;
	}
	public Integer getSlNo() {
		return slNo;
	}
	public void setSlNo(Integer slNo) {
		this.slNo = slNo;
	}
	public String getActivityDetails() {
		return activityDetails;
	}
	public void setActivityDetails(String activityDetails) {
		this.activityDetails = activityDetails;
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
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	
}
