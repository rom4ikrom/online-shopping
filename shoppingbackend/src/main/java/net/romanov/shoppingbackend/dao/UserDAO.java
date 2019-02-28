package net.romanov.shoppingbackend.dao;

import net.romanov.shoppingbackend.dto.Address;
import net.romanov.shoppingbackend.dto.Cart;
import net.romanov.shoppingbackend.dto.User;

public interface UserDAO {
	
	//add an user
	boolean addUser(User user);
	
	//add an address
	boolean addAddress(Address address);
	
	//add a cart
	boolean addCart(Cart cart);

}
