package pdn.sci.cs.service;

import java.util.List;

import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

import pdn.sci.cs.entity.GenericCategory;

public class GenericCategoryTest extends ServiceTest {
	
	@Autowired GenericCategoryService genericCategoryService;
	
	@Test
	public void findById() {
		GenericCategory list = genericCategoryService.findById("C001");
		System.out.println(list.getId());
		assertNotNull(list);
	}
	
	@Test
	public void save() {
		GenericCategory category = new GenericCategory();
		category.setCategory("PQEABC");
		category.setSortOrder(14);
		category = genericCategoryService.save(category);
		System.out.println(category.getId());
		assertNotNull(category);
	}
	
	@Test
	public void findAll() {
		
		List<GenericCategory> list = genericCategoryService.findAll();
		System.out.println(list.size());
		assertNotNull(list);
	}

}
