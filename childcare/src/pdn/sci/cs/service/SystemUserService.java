package pdn.sci.cs.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import pdn.sci.cs.dao.SystemUserDao;
import pdn.sci.cs.entity.SystemUser;

@Service
public class SystemUserService {

	@Autowired private SystemUserDao systemUserDao;
	
	public SystemUser findById(String id) {
		return systemUserDao.findById(id);
	}
	
	public SystemUser signIn(String username, String password) {
		return systemUserDao.findByUsernameAndPassword(username, password);
	}
	
	public SystemUser save(SystemUser systemUser) {
		return systemUserDao.save(systemUser);
	}
	
	public void update(SystemUser systemUser) {
		systemUserDao.update(systemUser);
	}
	
	public List<SystemUser> findAll() {
		return systemUserDao.findAll();
	}
	
	public List<SystemUser> search(String userId,String userRole,String email,String mobile) {
		return systemUserDao.search(userId,userRole,email,mobile);
	}
}