package pdn.sci.cs.dao;

import java.util.List;

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

	public List<SystemUser> search(String name, String userRole, String email, String mobile) {

		DetachedCriteria criteria = createCriteria(clazz);

		if (name != null && !name.isEmpty()) {
			criteria.add(Restrictions.like(SystemUser.NAME, "%" +name + "%"));
		}

		if (userRole != null && !userRole.isEmpty()) {
			criteria.add(Restrictions.eq(SystemUser.SYSTEM_USER_ROLE, userRole));
		}

		if (email != null && !email.isEmpty()) {
			criteria.add(Restrictions.eq(SystemUser.EMAIL, email));
		}

		if (mobile != null && !mobile.isEmpty()) {
			criteria.add(Restrictions.eq(SystemUser.MOBILE, mobile));
		}
		
		return findByCriteria(criteria);

	}

}
