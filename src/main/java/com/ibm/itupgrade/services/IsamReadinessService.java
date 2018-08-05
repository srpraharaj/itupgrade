package com.ibm.itupgrade.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ibm.itupgrade.models.IsamReadiness;
import com.ibm.itupgrade.repo.IsamReadinessRepo;

@Service
public class IsamReadinessService {

	@Autowired
	private IsamReadinessRepo isamRepo;
	
	public List<IsamReadiness> getAllActivities(){
		
		return (List<IsamReadiness>) isamRepo.findAll();
	}
	
	public IsamReadiness getActivityDetails(int slNo){
		
		return isamRepo.findOne(slNo);
	}
	
   public void addActivityStatus(IsamReadiness isamActivity){
		
	   isamRepo.save(isamActivity);
	}
	
	public void updateActivityStatus(IsamReadiness isamActivity, int slNo){
		
		isamRepo.save(isamActivity);
	}
	
	public void removeActivity(int slNo){
		isamRepo.delete(slNo);
	}
}
