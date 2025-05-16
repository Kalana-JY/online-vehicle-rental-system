package com.rental.services;

import java.util.ArrayList;

import com.rental.model.User;

public interface UserSavices {
	
	public void addUser(User user);
	public boolean validUser(User user);
	public User getOne(User user);
	public ArrayList<? extends User> getAllUser();
	public User singleData(User user);
	public void updateUser(User user);
	public void deleteUser(User user);
	
}
