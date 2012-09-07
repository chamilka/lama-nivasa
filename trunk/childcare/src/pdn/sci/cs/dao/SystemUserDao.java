package pdn.sci.cs.dao;

import org.hibernate.criterion.DetachedCriteria;
import org.hibernate.criterion.Order;
import org.hibernate.criterion.Restrictions;
import org.springframework.stereotype.Repository;

import pdn.sci.cs.entity.SystemUser;
import pdn.sci.cs.util.Pager;

@Repository
public class SystemUserDao extends GenericDao<SystemUser> {

	private static final Class<SystemUser> clazz = SystemUser.class;

	public SystemUser findByUsernameAndPassword(String username, String password) {

		DetachedCriteria criteria = createCriteria(clazz);
		criteria.add(Restrictions.eq(SystemUser.USERPASSWORD, password));
		criteria.add(Restrictions.eq(SystemUser.USERNAME, username));

		return findByCriteriaForUniqueResult(criteria);

	}
	
	public SystemUser searchByUsername(String username) {

		DetachedCriteria criteria = createCriteria(clazz);
		criteria.add(Restrictions.eq(SystemUser.USERNAME, username));

		return findByCriteriaForUniqueResult(criteria);

	}
	
	
	
	public Pager findAll(Integer start, Integer size) {
		
		DetachedCriteria criteria = createCriteria(getPersistentClass());
		criteria.addOrder(Order.asc("id"));
		return super.find(criteria, start, size);
		
	}

	public Pager search(String name, String userRole, 
			String referenceId, String mobile, Integer pageStart, Integer pageSize) {

		DetachedCriteria criteria = createCriteria(clazz);

		if (name != null && !name.isEmpty()) {
			criteria.add(Restrictions.like(SystemUser.NAME, "%" +name + "%"));
		}

		if (userRole != null && !userRole.isEmpty()) {
			criteria.add(Restrictions.eq(SystemUser.SYSTEM_USER_ROLE, userRole));
		}

		if (referenceId != null && !referenceId.isEmpty()) {
			criteria.add(Restrictions.eq(SystemUser.REFERENCE_ID, referenceId));
		}

		if (mobile != null && !mobile.isEmpty()) {
			criteria.add(Restrictions.eq(SystemUser.MOBILE, mobile));
		}
		
		return super.find(criteria, pageStart, pageSize);

	}

}
