package pdn.sci.cs.service;

import java.util.List;

import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

import pdn.sci.cs.entity.GenericList;

public class GenericListTest extends ServiceTest {
	
	@Autowired GenericListService genericListService;
	
	@Test
	public void findById() {
		List<GenericList> list = genericListService.findListByCategoryId("C001");
		System.out.println(list.size());
		assertNotNull(list);
	}
	
	@Test
	public void signIn() {
		
		List<GenericList> list = genericListService.findListByCategoryName("SEX_EN");
		System.out.println(list.size());
		assertNotNull(list);
	}

}
