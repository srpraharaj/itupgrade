package com.ibm.itupgrade.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ibm.itupgrade.message.VerificationStatus;
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
	
	public VerificationStatus getAppVerificationStatus(String type){
		VerificationStatus status = new VerificationStatus();
		int totalTask,adm,business,signoff, progress;
		if(type.equalsIgnoreCase("was 8.5") || type.contains("was")) {
			status.setActivityName("WAS Application Testing");
			type = "was 8.5";
		}else if(type.equalsIgnoreCase(".net") || type.contains("net")) {
			status.setActivityName(".Net Application Testing");
			type = ".net";
		}else if(type.equalsIgnoreCase("sharepoint") || type.contains("share")) {
			status.setActivityName("Sharepoint Testing");
			type = "sharepoint";
		}else {
			
		}
		totalTask = appRepo.findAppIdByRuntimeIgnoreCase(type).size();
		adm = appRepo.findAppIdByRuntimeIgnoreCaseAndAppTestingIgnoreCase(type, "completed").size();
		business = appRepo.findAppIdByRuntimeIgnoreCaseAndBusinessTestingIgnoreCase(type, "completed").size();
		signoff = appRepo.findAppIdByRuntimeIgnoreCaseAndBusinessSignoffIgnoreCase(type, "signed off").size();
		progress = ((adm+business+signoff)*100)/(totalTask*3);
		status.setTotalTask(totalTask);
		status.setAppTesting(adm);
		status.setBusinessTesting(business);
		status.setSignOff(signoff);
		status.setProgress(progress);
		return status;
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}
