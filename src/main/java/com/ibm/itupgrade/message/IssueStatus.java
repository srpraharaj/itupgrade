package com.ibm.itupgrade.message;

public class IssueStatus {

	private int totalIssue;
	private int infraIssue;
	private int appIssue;
	private int resolved;
	private int pending;
	private int progress;
	public IssueStatus() {
		
	}
	public IssueStatus(int totalIssue, int infraIssue, int appIssue, int resolved, int pending, int progress) {
		super();
		this.totalIssue = totalIssue;
		this.infraIssue = infraIssue;
		this.appIssue = appIssue;
		this.resolved = resolved;
		this.pending = pending;
		this.progress = progress;
	}
	public int getTotalIssue() {
		return totalIssue;
	}
	public void setTotalIssue(int totalIssue) {
		this.totalIssue = totalIssue;
	}
	public int getInfraIssue() {
		return infraIssue;
	}
	public void setInfraIssue(int infraIssue) {
		this.infraIssue = infraIssue;
	}
	public int getAppIssue() {
		return appIssue;
	}
	public void setAppIssue(int appIssue) {
		this.appIssue = appIssue;
	}
	public int getResolved() {
		return resolved;
	}
	public void setResolved(int resolved) {
		this.resolved = resolved;
	}
	public int getPending() {
		return pending;
	}
	public void setPending(int pending) {
		this.pending = pending;
	}
	public int getProgress() {
		return progress;
	}
	public void setProgress(int progress) {
		this.progress = progress;
	}
	
	
}
