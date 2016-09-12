package com.admin.dao;

import java.util.List;

import com.admin.model.UserProfile;



public interface UserProfileDao {

	List<UserProfile> findAll();
	
	UserProfile findByType(String type);
	
	UserProfile findById(int id);
}
