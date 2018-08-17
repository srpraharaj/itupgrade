package com.ibm.itupgrade.message;

public class VerificationStatus {
	private String activityName;
	private Integer totalTask;
	private Integer appTesting;
	private Integer businessTesting;
	private Integer signOff;
	private Integer progress;
	public VerificationStatus() {
		
	}
	public VerificationStatus(String activityName, Integer totalTask, Integer appTesting, Integer businessTesting,
			Integer signOff, Integer progress) {
		super();
		this.activityName = activityName;
		this.totalTask = totalTask;
		this.appTesting = appTesting;
		this.businessTesting = businessTesting;
		this.signOff = signOff;
		this.progress = progress;
	}
	public String getActivityName() {
		return activityName;
	}
	public void setActivityName(String activityName) {
		this.activityName = activityName;
	}
	public Integer getTotalTask() {
		return totalTask;
	}
	public void setTotalTask(Integer totalTask) {
		this.totalTask = totalTask;
	}
	public Integer getAppTesting() {
		return appTesting;
	}
	public void setAppTesting(Integer appTesting) {
		this.appTesting = appTesting;
	}
	public Integer getBusinessTesting() {
		return businessTesting;
	}
	public void setBusinessTesting(Integer businessTesting) {
		this.businessTesting = businessTesting;
	}
	public Integer getSignOff() {
		return signOff;
	}
	public void setSignOff(Integer signOff) {
		this.signOff = signOff;
	}
	public Integer getProgress() {
		return progress;
	}
	public void setProgress(Integer progress) {
		this.progress = progress;
	}
	
}
