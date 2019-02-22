package net.romanov.shoppingbackend.dao;

import java.util.List;

import net.romanov.shoppingbackend.dto.Category;

public interface CategoryDAO {
	
	List<Category> list();
	
	Category get(int id);

}
