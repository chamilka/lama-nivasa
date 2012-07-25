package pdn.sci.cs.dao;

import org.hibernate.criterion.DetachedCriteria;
import org.hibernate.criterion.Restrictions;
import org.springframework.stereotype.Repository;

import pdn.sci.cs.entity.SystemUser;

@Repository
public class SystemUserDao extends GenericDao<SystemUser> {
	
	private static final Class<SystemUser> clazz = SystemUser.class;
	
	public SystemUser findByUsernameAndPassword(String username, String password) {
		
		DetachedCriteria criteria = createCriteria(clazz);
		criteria.add(Restrictions.eq(SystemUser.USERPASSWORD, password));
		criteria.add(Restrictions.eq(SystemUser.USERNAME, username));
		
		return findByCriteriaForUniqueResult(criteria);
		
	}
	
}
