package pdn.sci.cs.service;

import org.junit.Ignore;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

import pdn.sci.cs.entity.SystemUser;

public class SystemUserTest extends ServiceTest {
	
	@Autowired SystemUserService systemUserService;
	
	@Ignore
	public void findById() {
		SystemUser user = systemUserService.findById("0001");
		assertNotNull(user);
	}
	
	@Test
	public void signIn() {
		final String username = "admin";
		final String password = "admin";
		
		SystemUser user = systemUserService.signIn(username, password);
		//System.out.println(user.getEmail());
		assertNotNull(user.getEmail());
	}

}
