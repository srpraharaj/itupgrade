package com.ibm.itupgrade.models;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.persistence.Table;

@Entity
@Table(name="team_details")
public class TeamDetails {
	
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private Integer teamId;
	private String teamName;
	
	@OneToOne
	@JoinColumn(name="primaryId")
	private UsersContact primaryContact;
	@OneToOne
	@JoinColumn(name="secondaryId")
	private UsersContact secondaryContact;
	@OneToOne
	@JoinColumn(name="managerId")
	private UsersContact managersContact;
	
	public TeamDetails(){
		
	}
	public TeamDetails(Integer teamId, String teamName,
			UsersContact primaryContact, UsersContact secondaryContact,
			UsersContact managersContact) {
		super();
		this.teamId = teamId;
		this.teamName = teamName;
		this.primaryContact = primaryContact;
		this.secondaryContact = secondaryContact;
		this.managersContact = managersContact;
	}
	public Integer getTeamId() {
		return teamId;
	}
	public void setTeamId(Integer teamId) {
		this.teamId = teamId;
	}
	public String getTeamName() {
		return teamName;
	}
	public void setTeamName(String teamName) {
		this.teamName = teamName;
	}
	public UsersContact getPrimaryContact() {
		return primaryContact;
	}
	public void setPrimaryContact(UsersContact primaryContact) {
		this.primaryContact = primaryContact;
	}
	public UsersContact getSecondaryContact() {
		return secondaryContact;
	}
	public void setSecondaryContact(UsersContact secondaryContact) {
		this.secondaryContact = secondaryContact;
	}
	public UsersContact getManagersContact() {
		return managersContact;
	}
	public void setManagersContact(UsersContact managersContact) {
		this.managersContact = managersContact;
	}
	
	

}
