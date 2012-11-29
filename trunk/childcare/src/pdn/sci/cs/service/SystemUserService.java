package pdn.sci.cs.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import pdn.sci.cs.dao.SystemUserDao;
import pdn.sci.cs.entity.SystemUser;
import pdn.sci.cs.util.Pager;

@Service
public class SystemUserService {

	@Autowired private SystemUserDao systemUserDao;

	public SystemUser findById(String id) {
		return systemUserDao.findById(id);
	}

	public SystemUser signIn(String username, String password) {
		return systemUserDao.findByUsernameAndPassword(username, password);
	}

	public SystemUser searchByUsername(String username) {
		return systemUserDao.searchByUsername(username);
	}

	public SystemUser save(SystemUser systemUser) {
		return systemUserDao.save(systemUser);
	}

	public SystemUser merge(SystemUser systemUser) {
		return systemUserDao.merge(systemUser);
	}

	public void update(SystemUser systemUser) {
		systemUserDao.update(systemUser);
	}

	public List<SystemUser> findAll() {
		return systemUserDao.findAll();
	}

	public Pager findAll(Integer start, Integer size) {
		return systemUserDao.findAll(start, size);
	}

	public Pager search(String userId, String userRole, String referenceId,
			String mobile, Integer pageStart, Integer pageSize) {
		return systemUserDao.search(userId, userRole, referenceId, mobile, pageStart, pageSize);
	}

	public List<SystemUser> findByUserRole(SystemUser.USER_ROLE userRole) {
		return systemUserDao.searchByUserRole(userRole);
	}
}
