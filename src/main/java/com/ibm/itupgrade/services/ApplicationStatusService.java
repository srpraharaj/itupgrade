package com.ibm.itupgrade.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ibm.itupgrade.models.ApplicationStatus;
import com.ibm.itupgrade.repo.ApplicationStatusRepo;

@Service
public class ApplicationStatusService {

	
	@Autowired
	private ApplicationStatusRepo appRepo;
	
	public List<ApplicationStatus> getAllAppStatus(){
		
		return (List<ApplicationStatus>) appRepo.findAll();
	}
	
	public ApplicationStatus getAppStatus(int appId){
		
		return appRepo.findOne(appId);
	}
	
	public void addAppStatus(ApplicationStatus appStatus){
		
		appRepo.save(appStatus);
	}
	
	public void updateAppStatus(ApplicationStatus appStatus, int appId){
		
		appRepo.save(appStatus);
	}
	
	public void removeAppStatus(int appId){
		appRepo.delete(appId);
	}
	
	public List<ApplicationStatus> findStatusByAppName(String appName){
		
		return appRepo.findByAppName(appName);
	}
	
}
