package net.romanov.shoppingbackend.test;

import static org.junit.Assert.assertEquals;

import org.junit.BeforeClass;
import org.junit.Test;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import net.romanov.shoppingbackend.dao.UserDAO;
import net.romanov.shoppingbackend.dto.Address;
import net.romanov.shoppingbackend.dto.Cart;
import net.romanov.shoppingbackend.dto.User;

public class UserTestCase {
	
	private static AnnotationConfigApplicationContext context;
	private static UserDAO userDAO;
	private User user = null;
	private Cart cart = null;
	private Address address = null;
	
	@BeforeClass
	public static void init() {
		context = new AnnotationConfigApplicationContext();
		context.scan("net.romanov.shoppingbackend");
		context.refresh();
		
		userDAO = (UserDAO) context.getBean("userDAO");
	}
	
	@Test
	public void testAdd() {
		
		user = new User();
		user.setFirstName("Hrithik");
		user.setLastName("Roshan");
		user.setEmail("hr@gmail.com");
		user.setContactNumber("1234512345");
		user.setRole("USER");
		user.setPassword("123456");
		
		//add the user
		assertEquals("Failder to add user!", true, userDAO.addUser(user));
		
		address = new Address();
		address.setAddressLineOne("101/B Jadoo Society, Krissh Nagar");
		address.setAddressLineTwo("Near Kaabil Store");
		address.setCity("Mumbai");
		address.setState("Maharashtra");
		address.setCountry("India");
		address.setPostalCode("400001");
		address.setBilling(true);
		
		//link the user with the address using user id
		address.setUserId(user.getId());
		
		//add the address
		assertEquals("Failder to add address!", true, userDAO.addAddress(address));
		
		if(user.getRole().equals("USER")) {
			//create a cart for this user
			
			cart = new Cart();
			cart.setUser(user);
			
			//add the cart
			assertEquals("Failder to add cart!", true, userDAO.addCart(cart));
			
			//add a shipping address for this user
			address = new Address();
			address.setAddressLineOne("201/B Jadoo Society");
			address.setAddressLineTwo("Near Kudrat Store");
			address.setCity("Mumbai");
			address.setState("Maharashtra");
			address.setCountry("India");
			address.setPostalCode("400001");
			//set shipping to true
			address.setShipping(true);
			
			//link it with the user
			address.setUserId(user.getId());
			
			//add the shipping address
			assertEquals("Failder to add shipping address!", true, userDAO.addAddress(address));
		}
		
	}

}
