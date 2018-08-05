package com.ibm.itupgrade.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ibm.itupgrade.models.UsersContact;
import com.ibm.itupgrade.repo.UsersContactRepo;

@Service
public class UsersContactService {
	
	@Autowired
	private UsersContactRepo usersContactRepo;

	public List<UsersContact> getAllUsersContact(){
		
		return (List<UsersContact>) usersContactRepo.findAll();
	}
	
	public UsersContact getUsersContact(int userId){
		
		return usersContactRepo.findOne(userId);
	}
	
	public void addUsersContact(UsersContact usersContact){
		usersContactRepo.save(usersContact);
	}
	public void updateUsersContact(UsersContact usersContact, int teamId){
		usersContactRepo.save(usersContact);
	}
	public void removeUsersContact(int userId){
		usersContactRepo.delete(userId);
	}
	
	public List<UsersContact> getByUserName(String userName){
		
		return usersContactRepo.findByUserName(userName);
	}
}
