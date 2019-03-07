package net.romanov.shoppingbackend.test;

import static org.junit.Assert.assertEquals;

import org.junit.BeforeClass;
import org.junit.Test;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import net.romanov.shoppingbackend.dao.CartLineDAO;
import net.romanov.shoppingbackend.dao.ProductDAO;
import net.romanov.shoppingbackend.dao.UserDAO;
import net.romanov.shoppingbackend.dto.Cart;
import net.romanov.shoppingbackend.dto.CartLine;
import net.romanov.shoppingbackend.dto.Product;
import net.romanov.shoppingbackend.dto.User;

public class CartLineTestCase {
	
	private static AnnotationConfigApplicationContext context;

	private static CartLineDAO cartLineDAO = null;
	private static ProductDAO productDAO = null;
	private static UserDAO userDAO = null;

	private Product product = null;
	private User user = null;
	private Cart cart = null;
	private CartLine cartLine = null;

	@BeforeClass
	public static void init() {

		context = new AnnotationConfigApplicationContext();
		context.scan("net.romanov.shoppingbackend");
		context.refresh();

		productDAO = (ProductDAO) context.getBean("productDAO");
		userDAO = (UserDAO) context.getBean("userDAO");
		cartLineDAO = (CartLineDAO) context.getBean("cartLineDAO");

	}
	
	@Test
	public void testAddNewCartLine() {
		
		// getting the user
		user = userDAO.getByEmail("rom4ikrom@ukr.net");
		
		//fetch the cart
		cart = user.getCart();
		
		//get the product
		product = productDAO.get(3);
		
		//create a new cart line
		cartLine = new CartLine();
		
		cartLine.setBuyingPrice(product.getUnitPrice());
		
		cartLine.setProductCount(cartLine.getProductCount() + 1);
		
		cartLine.setTotal(cartLine.getProductCount() * product.getUnitPrice());
		
		cartLine.setAvailable(true);
		
		cartLine.setCartId(cart.getId());
		
		cartLine.setProduct(product);
		
		assertEquals("Fail to add the cartLine", true, cartLineDAO.add(cartLine));
		
		//update the cart
		cart.setGrandTotal(cart.getGrandTotal() + cartLine.getTotal());
		cart.setCartLines(cart.getCartLines() + 1);
		
		assertEquals("Fail to update the cart", true, cartLineDAO.updateCart(cart));
		
	}

}
