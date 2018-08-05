package com.ibm.itupgrade.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

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
    
} 
