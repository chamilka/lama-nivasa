package pdn.sci.cs.dao;

import org.hibernate.criterion.DetachedCriteria;
import org.hibernate.criterion.Restrictions;
import org.springframework.stereotype.Repository;

import pdn.sci.cs.entity.SystemUser;
import pdn.sci.cs.service.String;

@Repository
public class SystemUserDao extends GenericDao<SystemUser> {

	private static final Class<SystemUser> clazz = SystemUser.class;

	public SystemUser findByUsernameAndPassword(String username, String password) {

		DetachedCriteria criteria = createCriteria(clazz);
		criteria.add(Restrictions.eq(SystemUser.USERPASSWORD, password));
		criteria.add(Restrictions.eq(SystemUser.USERNAME, username));

		return findByCriteriaForUniqueResult(criteria);

	}

	public List<Systemuser> search(String userId, String userRole, String email, String mobile) {

		DetachedCriteria criteria = createCriteria(clazz);

		if (userId != null && !userId.isEmpty()) {
			criteria.add(Restrictions.eq(user.id, userId));
		}

		if (userRole != null && !userRole.isEmpty()) {
			criteria.add(Restrictions.eq(user.userRole, userRole));
		}

		if (email != null && !email.isEmpty()) {
			criteria.add(Restrictions.eq(user.email, email));
		}

		if (mobile != null && !mobile.isEmpty()) {
			criteria.add(Restrictions.eq(user.mobile, mobile));
		}
		return findByCriteria(criteria);

	}

}
