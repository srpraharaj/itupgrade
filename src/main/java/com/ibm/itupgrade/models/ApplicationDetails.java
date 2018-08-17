package com.ibm.itupgrade.models;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="app_details")
public class ApplicationDetails {

	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int appId;
	private String appCode;
	
	private String appName;
	private String appType;
	private String upstreamAppList;
	private String downstreamAppList;
	private String businessArea;
	private String prodAppServers;
	private String prodIHSServers;
	private String prodAppURL;
	private String prodDbDetails;
	private String prodMqDetails;
	private String wasJVMName;
	private String wasPortNo;
	private String dataSourceName;
	/*@OneToOne
	@JoinColumn(name="primarySupport")
	private UsersContact primarySupport;
	@OneToOne
	@JoinColumn(name="secondarySupport")
	private UsersContact secondarySupport;
	@OneToOne
	@JoinColumn(name="appAsmId")
	private UsersContact appASM;
	@OneToOne
	@JoinColumn(name="appSmeId")
	private UsersContact appSME;
	@OneToOne
	@JoinColumn(name="businessUserId")
	private UsersContact businessUser;*/
	public ApplicationDetails(){
		
	}
	public ApplicationDetails(int appId, String appCode, String appName,
			String appType, String upstreamAppList, String downstreamAppList,
			String businessArea, String prodAppServers, String prodIHSServers,
			String prodAppURL, String prodDbDetails, String prodMqDetails,
			String wasJVMName, String wasPortNo, String dataSourceName,
			UsersContact primarySupport, UsersContact secondarySupport,
			UsersContact appASM, UsersContact appSME, UsersContact businessUser) {
		super();
		this.appId = appId;
		this.appCode = appCode;
		this.appName = appName;
		this.appType = appType;
		this.upstreamAppList = upstreamAppList;
		this.downstreamAppList = downstreamAppList;
		this.businessArea = businessArea;
		this.prodAppServers = prodAppServers;
		this.prodIHSServers = prodIHSServers;
		this.prodAppURL = prodAppURL;
		this.prodDbDetails = prodDbDetails;
		this.prodMqDetails = prodMqDetails;
		this.wasJVMName = wasJVMName;
		this.wasPortNo = wasPortNo;
		this.dataSourceName = dataSourceName;
		
	}
	public int getAppId() {
		return appId;
	}
	public void setAppId(int appId) {
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
	public String getAppType() {
		return appType;
	}
	public void setAppType(String appType) {
		this.appType = appType;
	}
	public String getUpstreamAppList() {
		return upstreamAppList;
	}
	public void setUpstreamAppList(String upstreamAppList) {
		this.upstreamAppList = upstreamAppList;
	}
	public String getDownstreamAppList() {
		return downstreamAppList;
	}
	public void setDownstreamAppList(String downstreamAppList) {
		this.downstreamAppList = downstreamAppList;
	}
	public String getBusinessArea() {
		return businessArea;
	}
	public void setBusinessArea(String businessArea) {
		this.businessArea = businessArea;
	}
	public String getProdAppServers() {
		return prodAppServers;
	}
	public void setProdAppServers(String prodAppServers) {
		this.prodAppServers = prodAppServers;
	}
	public String getProdIHSServers() {
		return prodIHSServers;
	}
	public void setProdIHSServers(String prodIHSServers) {
		this.prodIHSServers = prodIHSServers;
	}
	public String getProdAppURL() {
		return prodAppURL;
	}
	public void setProdAppURL(String prodAppURL) {
		this.prodAppURL = prodAppURL;
	}
	public String getProdDbDetails() {
		return prodDbDetails;
	}
	public void setProdDbDetails(String prodDbDetails) {
		this.prodDbDetails = prodDbDetails;
	}
	public String getProdMqDetails() {
		return prodMqDetails;
	}
	public void setProdMqDetails(String prodMqDetails) {
		this.prodMqDetails = prodMqDetails;
	}
	public String getWasJVMName() {
		return wasJVMName;
	}
	public void setWasJVMName(String wasJVMName) {
		this.wasJVMName = wasJVMName;
	}
	public String getWasPortNo() {
		return wasPortNo;
	}
	public void setWasPortNo(String wasPortNo) {
		this.wasPortNo = wasPortNo;
	}
	public String getDataSourceName() {
		return dataSourceName;
	}
	public void setDataSourceName(String dataSourceName) {
		this.dataSourceName = dataSourceName;
	}
	
}
