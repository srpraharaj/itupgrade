package com.ibm.itupgrade.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ibm.itupgrade.message.ReadinessStatus;
import com.ibm.itupgrade.models.ApplicationReadiness;
import com.ibm.itupgrade.repo.ApplicationReadinessRepo;

@Service
public class ApplicationReadinessServices {

	@Autowired
	private ApplicationReadinessRepo appRepo;
	
	public List<ApplicationReadiness> getAllItems(){
		
		return (List<ApplicationReadiness>) appRepo.findAll();
	}
	
	public ApplicationReadiness getItem(int itemId){
		
		return appRepo.findOne(itemId);
	}
	
	public void addItem(ApplicationReadiness dp){
		appRepo.save(dp);
	}
	public void updateItem(ApplicationReadiness dp, int itemId){
		appRepo.save(dp);
	}
	public void removeItem(int itemId){
		appRepo.delete(itemId);
	}

	public ReadinessStatus generateCompletedTaskDetails(String group) {
		ReadinessStatus readyStatus = new ReadinessStatus();
		int totalTasks, completedTasks, progress = 0;

		if (group.equalsIgnoreCase("was server") || group.contains("was")) {
			readyStatus.setActivityName("WAS Application Readiness");
			totalTasks = appRepo.findActivityIdByActivityGroupIgnoreCase("was server").size();
			completedTasks = appRepo
					.findActivityIdByTaskStatusIgnoreCaseAndActivityGroupIgnoreCase("completed", "was server").size();
		} else {
			readyStatus.setActivityName(".Net & Sharepoint Readiness");
			totalTasks = appRepo.findActivityIdByActivityGroupIgnoreCase(".net app").size()
					+ appRepo.findActivityIdByActivityGroupIgnoreCase("sharepoint").size();
			completedTasks = appRepo
					.findActivityIdByTaskStatusIgnoreCaseAndActivityGroupIgnoreCase("completed", ".net app").size()
					+ appRepo.findActivityIdByTaskStatusIgnoreCaseAndActivityGroupIgnoreCase("completed", "sharepoint")
							.size();
		}
		if(totalTasks != 0) {
			
			progress = (completedTasks * 100) / totalTasks;
		}
		readyStatus.setCompletedTask(completedTasks);
		readyStatus.setTotalTask(totalTasks);
		readyStatus.setProgress(progress);
		return readyStatus;
	}
}
