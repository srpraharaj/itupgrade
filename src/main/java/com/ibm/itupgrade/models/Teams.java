package com.ibm.itupgrade.models;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class Teams {
	
	@Id
	private int team_id;
	private String teamname;
	private String pname;
	private String pemail;
	private String pmobile;
	private String sname;
	private String semail;
	private String smobile;
	private String mname;
	private String memail;
	private String mmobile;
	public Teams(){
		
	}
	public Teams(int team_id, String teamname, String pname, String pemail,
			String pmobile, String sname, String semail, String smobile,
			String mname, String memail, String mmobile) {
		super();
		this.team_id = team_id;
		this.teamname = teamname;
		this.pname = pname;
		this.pemail = pemail;
		this.pmobile = pmobile;
		this.sname = sname;
		this.semail = semail;
		this.smobile = smobile;
		this.mname = mname;
		this.memail = memail;
		this.mmobile = mmobile;
	}
	public int getTeam_id() {
		return team_id;
	}
	public void setTeam_id(int team_id) {
		this.team_id = team_id;
	}
	public String getTeamname() {
		return teamname;
	}
	public void setTeamname(String teamname) {
		this.teamname = teamname;
	}
	public String getPname() {
		return pname;
	}
	public void setPname(String pname) {
		this.pname = pname;
	}
	public String getPemail() {
		return pemail;
	}
	public void setPemail(String pemail) {
		this.pemail = pemail;
	}
	public String getPmobile() {
		return pmobile;
	}
	public void setPmobile(String pmobile) {
		this.pmobile = pmobile;
	}
	public String getSname() {
		return sname;
	}
	public void setSname(String sname) {
		this.sname = sname;
	}
	public String getSemail() {
		return semail;
	}
	public void setSemail(String semail) {
		this.semail = semail;
	}
	public String getSmobile() {
		return smobile;
	}
	public void setSmobile(String smobile) {
		this.smobile = smobile;
	}
	public String getMname() {
		return mname;
	}
	public void setMname(String mname) {
		this.mname = mname;
	}
	public String getMemail() {
		return memail;
	}
	public void setMemail(String memail) {
		this.memail = memail;
	}
	public String getMmobile() {
		return mmobile;
	}
	public void setMmobile(String mmobile) {
		this.mmobile = mmobile;
	}

}
