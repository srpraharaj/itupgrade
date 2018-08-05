package com.ibm.itupgrade.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ibm.itupgrade.models.ApplicationDetails;
import com.ibm.itupgrade.repo.ApplicationDetailsRepo;

@Service
public class ApplicationDetailsService {

	
	@Autowired
	private ApplicationDetailsRepo appRepo;
	
	public List<ApplicationDetails> getAllAppDetails(){
		
		return (List<ApplicationDetails>) appRepo.findAll();
	}
	
	public ApplicationDetails getAppDetails(int appId){
		
		return appRepo.findOne(appId);
	}
	
	public void addAppDetails(ApplicationDetails appDetails){
		
		appRepo.save(appDetails);
	}
	
	public void updateAppDetails(ApplicationDetails appDetails, int appId){
		
		appRepo.save(appDetails);
	}
	
	public void removeAppDetails(int appId){
		appRepo.delete(appId);
	}
	
	public List<ApplicationDetails> findDetailsByAppName(String appName){
		
		return appRepo.findByAppName(appName);
	}
	
}
