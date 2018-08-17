package com.ibm.itupgrade.services;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ibm.itupgrade.message.ReadinessStatus;
import com.ibm.itupgrade.models.MiddlewareReadiness;
import com.ibm.itupgrade.repo.MiddlewareReadinessRepo;

@Service
public class MiddlewareReadinessServices {

	@Autowired
	private MiddlewareReadinessRepo dpRepo;
	
	public List<MiddlewareReadiness> getAllItems(){
		
		return (List<MiddlewareReadiness>) dpRepo.findAll();
	}
	
	public MiddlewareReadiness getItem(int itemId){
		
		return dpRepo.findOne(itemId);
	}
	
	public void addItem(MiddlewareReadiness dp){
		dpRepo.save(dp);
	}
	public void updateItem(MiddlewareReadiness dp, int itemId){
		dpRepo.save(dp);
	}
	public void removeItem(int itemId){
		dpRepo.delete(itemId);
	}
	public ReadinessStatus generateCompletedTaskDetails(){

		List<MiddlewareReadiness> totalList = new ArrayList<>();
		totalList = (List<MiddlewareReadiness>) dpRepo.findAll();
		int totalSize= totalList.size();
		int completedSize = dpRepo.findActivityIdByChangeStatusIgnoreCase("completed").size();
		Integer progress = (completedSize*100)/totalSize;
		ReadinessStatus readyStatus = new ReadinessStatus();
		readyStatus.setActivityName("Middleware (DP+IIB) Readiness");
		readyStatus.setCompletedTask(completedSize);
		readyStatus.setTotalTask(totalSize);
		readyStatus.setProgress(progress);
		return readyStatus;
	}
} 
