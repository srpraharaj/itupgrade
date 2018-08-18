package com.ibm.itupgrade.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ibm.itupgrade.models.OngoingActivities;
import com.ibm.itupgrade.repo.OngoingActivitiesRepo;

@Service
public class OngoingActivitiesServices {

	
	@Autowired
	private OngoingActivitiesRepo appRepo;
	
	public List<OngoingActivities> getAllActivitiesDetails(){
		
		return (List<OngoingActivities>) appRepo.findAll();
	}
	
	public OngoingActivities getAppDetails(int slNo){
		
		return appRepo.findOne(slNo);
	}
	
	public void addActivitiesDetails(OngoingActivities appDetails){
		
		appRepo.save(appDetails);
	}
	
	public void updateActivitiesDetails(OngoingActivities appDetails, int slNo){
		
		appRepo.save(appDetails);
	}
	
	public void removeActivitiesDetails(int slNo){
		appRepo.delete(slNo);
	}
	
	public List<OngoingActivities> findActivityDetailsByStatus(String status){
		
		return appRepo.findByStatusIgnoreCase(status);
	}
	
}
