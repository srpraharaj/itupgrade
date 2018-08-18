package com.ibm.itupgrade.services;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ibm.itupgrade.message.ReadinessStatus;
import com.ibm.itupgrade.message.VerificationStatus;
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
	public ReadinessStatus generateCompletedTaskDetails(){

		List<IsamReadiness> totalList = new ArrayList<>();
		totalList = (List<IsamReadiness>) isamRepo.findAll();
		int totalSize= totalList.size();
		int completedSize = isamRepo.findSlNoByTaskStatusIgnoreCase("completed").size();
		Integer progress = (completedSize*100)/totalSize;
		
		ReadinessStatus readyStatus = new ReadinessStatus();
		readyStatus.setActivityName("ISAM & Infra Readiness");
		readyStatus.setCompletedTask(completedSize);
		readyStatus.setTotalTask(totalSize);
		readyStatus.setProgress(progress);
		return readyStatus;
	}
	
	public VerificationStatus getAppVerificationStatus() {
		VerificationStatus status = new VerificationStatus();
		status.setActivityName("ISAM Testing");
		status.setBusinessTesting(-1);
		status.setSignOff(-1);
		int totalSize,completedSize,progress=0;
		List<IsamReadiness> totalList = new ArrayList<>();
		totalList = (List<IsamReadiness>) isamRepo.findAll();
		totalSize= totalList.size();
	    completedSize = isamRepo.findSlNoByTaskStatusIgnoreCase("completed").size();
	    if(totalSize !=0) {
	    	progress = (completedSize*100)/totalSize;
	    }
		status.setAppTesting(completedSize);
		status.setTotalTask(totalSize);
		status.setProgress(progress);
		return status;
		
	}
}
