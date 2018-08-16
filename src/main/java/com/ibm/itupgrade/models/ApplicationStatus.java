package com.ibm.itupgrade.models;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "app_testing")
public class ApplicationStatus {
	
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private Integer appId;
	private String appCode;
	private String appName;
	private String runtime;
	private String businessArea;
	private String appReadinessStatus;
	private String appTesting;
	private String appSME;
	private String businessTesting;
	private String businessSignoff;
	private String issueReported;
	private String finalStatus;
	public ApplicationStatus(){
		
	}
	public ApplicationStatus(Integer appId, String appCode, String appName,
			String runtime, String businessArea, String appReadinessStatus,
			String appTesting, String appSME,String businessTesting,
			String businessSignoff, String issueReported, String finalStatus) {
		super();
		this.appId = appId;
		this.appCode = appCode;
		this.appName = appName;
		this.runtime = runtime;
		this.businessArea = businessArea;
		this.appReadinessStatus = appReadinessStatus;
		this.appTesting = appTesting;
		this.appSME = appSME;
		this.businessTesting = businessTesting;
		this.businessSignoff = businessSignoff;
		this.issueReported = issueReported;
		this.finalStatus = finalStatus;
	}
	public Integer getAppId() {
		return appId;
	}
	public void setAppId(Integer appId) {
		this.appId = appId;
	}
	public String getAppCode() {
		return appCode;
	}
	public void setAppCode(String appCode) {
		this.appCode = appCode;
	}
	public String getAppName() {
		return appName;
	}
	public void setAppName(String appName) {
		this.appName = appName;
	}
	public String getRuntime() {
		return runtime;
	}
	public void setRuntime(String runtime) {
		this.runtime = runtime;
	}
	public String getBusinessArea() {
		return businessArea;
	}
	public void setBusinessArea(String businessArea) {
		this.businessArea = businessArea;
	}
	public String getAppReadinessStatus() {
		return appReadinessStatus;
	}
	public void setAppReadinessStatus(String appReadinessStatus) {
		this.appReadinessStatus = appReadinessStatus;
	}
	public String getAppTesting() {
		return appTesting;
	}
	public void setAppTesting(String appTesting) {
		this.appTesting = appTesting;
	}
	public String getAppSME() {
		return appSME;
	}
	public void setAppSME(String appSME) {
		this.appSME = appSME;
	}
	public String getBusinessTesting() {
		return businessTesting;
	}
	public void setBusinessTesting(String businessTesting) {
		this.businessTesting = businessTesting;
	}
	public String getBusinessSignoff() {
		return businessSignoff;
	}
	public void setBusinessSignoff(String businessSignoff) {
		this.businessSignoff = businessSignoff;
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
	
	
}
