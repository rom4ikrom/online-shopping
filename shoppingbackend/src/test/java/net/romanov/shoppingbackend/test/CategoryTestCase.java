package net.romanov.shoppingbackend.test;

import static org.junit.Assert.assertEquals;

import org.junit.BeforeClass;
import org.junit.Test;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import net.romanov.shoppingbackend.dao.CategoryDAO;
import net.romanov.shoppingbackend.dto.Category;

public class CategoryTestCase {

	private static AnnotationConfigApplicationContext context;

	private static CategoryDAO categoryDAO;

	private Category category;

	@BeforeClass
	public static void init() {

		context = new AnnotationConfigApplicationContext();
		context.scan("net.romanov.shoppingbackend");
		context.refresh();

		categoryDAO = (CategoryDAO) context.getBean("categoryDAO");

	}

	/*
	@Test
	public void testAddCategory() {

		category = new Category();
		category.setName("Laptop");
		category.setDescription("Description Laptop");
		category.setImageURL("CAT_105.png");
		//error
		assertEquals("Seccussfully added a category inside the table", true, categoryDAO.add(category));

	}
	 */


	/*
	@Test
	public void testGetGategory() {

		category = categoryDAO.get(1);

		assertEquals("Seccussfully fetched a single category from the table", "Television", category.getName());

	}
	 */

	/*
	@Test
	public void testUpdateGategory() {

		category = categoryDAO.get(1);

		category.setName("TV");

		assertEquals("Seccussfully updated a single category in the table", true, categoryDAO.update(category));

	}
	 */

	/*
	@Test
	public void testDeleteGategory() {

		category = categoryDAO.get(1);

		assertEquals("Seccussfully deleted a single category in the table", true, categoryDAO.delete(category));

	}
	 */

	/*
	@Test
	public void testListGategory() {

		category = categoryDAO.get(1);

		assertEquals("Seccussfully fetched a list categories from the table", 3, categoryDAO.list().size());

	}
	 */

	@Test
	public void testCRUDCategory() {

		//add operation
		category = new Category();
		category.setName("Laptop");
		category.setDescription("Description Laptop");
		category.setImageURL("CAT_1.png");

		assertEquals("Seccussfully added a category inside the table", true, categoryDAO.add(category));
		
		category = new Category();

		category.setName("Television");
		category.setDescription("Description Television");
		category.setImageURL("CAT_2.png");

		assertEquals("Seccussfully added a category inside the table", true, categoryDAO.add(category));
		
		//fetch and updating the category
		category = categoryDAO.get(2);
		
		category.setName("TV");
		
		assertEquals("Seccussfully updated a single category in the table", true, categoryDAO.update(category));
		
		//delete the category
		assertEquals("Seccussfully deleted a single category in the table", true, categoryDAO.delete(category));
		
		assertEquals("Seccussfully fetched a list categories from the table", 1, categoryDAO.list().size());
		


	}



}
