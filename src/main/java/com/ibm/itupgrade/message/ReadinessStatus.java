package com.ibm.itupgrade.message;

public class ReadinessStatus {

	private String activityName;
	private Integer totalTask;
	private Integer completedTask;
	private Integer progress;
	public ReadinessStatus() {
		
	}
	public ReadinessStatus(String activityName, Integer totalTask, Integer completedTask, Integer progress) {
		super();
		this.activityName = activityName;
		this.totalTask = totalTask;
		this.completedTask = completedTask;
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
	public Integer getCompletedTask() {
		return completedTask;
	}
	public void setCompletedTask(Integer completedTask) {
		this.completedTask = completedTask;
	}
	public Integer getProgress() {
		return progress;
	}
	public void setProgress(Integer progress) {
		this.progress = progress;
	}
	
}
