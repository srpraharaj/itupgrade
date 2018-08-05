package com.ibm.itupgrade.models;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.OneToOne;
import javax.persistence.Table;

@Entity
@Table(name = "app_status")
public class ApplicationStatus {
	
	@Id
	private Integer appId;
	private String appName;
	private String appReadinessStatus;
	private String appCheckout;
	private String appCheckoutStatus;
	private String isBusinessCheckoutReady;
	private String businessSignoff;
	private String issueReported;
	private String finalStatus;
	@OneToOne
	private ApplicationDetails applicationDetails;
	public Integer getAppId() {
		return appId;
	}
	public void setAppId(Integer appId) {
		this.appId = appId;
	}
	public String getAppName() {
		return appName;
	}
	public void setAppName(String appName) {
		this.appName = appName;
	}
	public String getAppReadinessStatus() {
		return appReadinessStatus;
	}
	public void setAppReadinessStatus(String appReadinessStatus) {
		this.appReadinessStatus = appReadinessStatus;
	}
	public String getAppCheckout() {
		return appCheckout;
	}
	public void setAppCheckout(String appCheckout) {
		this.appCheckout = appCheckout;
	}
	public String getAppCheckoutStatus() {
		return appCheckoutStatus;
	}
	public void setAppCheckoutStatus(String appCheckoutStatus) {
		this.appCheckoutStatus = appCheckoutStatus;
	}
	public String getIsBusinessCheckoutReady() {
		return isBusinessCheckoutReady;
	}
	public void setIsBusinessCheckoutReady(String isBusinessCheckoutReady) {
		this.isBusinessCheckoutReady = isBusinessCheckoutReady;
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
	public ApplicationDetails getApplicationDetails() {
		return applicationDetails;
	}
	public void setApplicationDetails(ApplicationDetails applicationDetails) {
		this.applicationDetails = applicationDetails;
	}
	public ApplicationStatus(){
		
	}
	public ApplicationStatus(Integer appId, String appName,
			String appReadinessStatus, String appCheckout,
			String appCheckoutStatus, String isBusinessCheckoutReady,
			String businessSignoff, String issueReported, String finalStatus,
			ApplicationDetails applicationDetails) {
		super();
		this.appId = appId;
		this.appName = appName;
		this.appReadinessStatus = appReadinessStatus;
		this.appCheckout = appCheckout;
		this.appCheckoutStatus = appCheckoutStatus;
		this.isBusinessCheckoutReady = isBusinessCheckoutReady;
		this.businessSignoff = businessSignoff;
		this.issueReported = issueReported;
		this.finalStatus = finalStatus;
		this.applicationDetails = applicationDetails;
	}
	
	

}
