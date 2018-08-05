package com.ibm.itupgrade.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

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
    
} 
