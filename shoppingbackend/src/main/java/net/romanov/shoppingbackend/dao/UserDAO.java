package net.romanov.shoppingbackend.dao;

import java.util.List;

import net.romanov.shoppingbackend.dto.Address;
import net.romanov.shoppingbackend.dto.Cart;
import net.romanov.shoppingbackend.dto.User;

public interface UserDAO {
	
	//add an user
	boolean addUser(User user);
	
	User getByEmail(String email);
	
	//add an address
	boolean addAddress(Address address);
	
	// alternative
	// Address getBillingAddress(int userId);
	// List<Address> listShippingAddresses(int userId);
	
	Address getBillingAddress(User user);
	List<Address> listShippingAddresses(User user);

}
