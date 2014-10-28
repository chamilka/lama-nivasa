package pdn.sci.cs.dao;

import java.util.List;

import org.hibernate.Query;
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

  public List<SystemUser> searchByUserRole(SystemUser.USER_ROLE userRole) {

    DetachedCriteria criteria = createCriteria(clazz);
    criteria.add(Restrictions.eq(SystemUser.SYSTEM_USER_ROLE, userRole.name()));

    return findByCriteria(criteria);
  }

  public List<SystemUser> searchByUserRoleAndReferenceId(SystemUser.USER_ROLE userRole,
      String referenceId) {

    DetachedCriteria criteria = createCriteria(clazz);
    criteria.add(Restrictions.eq(SystemUser.SYSTEM_USER_ROLE, userRole.name()));
    criteria.add(Restrictions.eq(SystemUser.REFERENCE_ID, referenceId));

    return findByCriteria(criteria);
  }

  public Pager findAll(Integer start, Integer size) {

    DetachedCriteria criteria = createCriteria(getPersistentClass());
    criteria.addOrder(Order.asc("id"));
    return super.find(criteria, start, size);
  }

  public Pager search(String name, String userRole, String mobile,
      Integer pageStart, Integer pageSize) {

    DetachedCriteria criteria = createCriteria(clazz);

    if (name != null && !name.isEmpty()) {
      criteria.add(Restrictions.like(SystemUser.NAME, "%" + name + "%"));
    }

    if (userRole != null && !userRole.isEmpty()) {
      criteria.add(Restrictions.eq(SystemUser.SYSTEM_USER_ROLE, userRole));
    }

    if (mobile != null && !mobile.isEmpty()) {
      criteria.add(Restrictions.eq(SystemUser.MOBILE, mobile));
    }

    return super.find(criteria, pageStart, pageSize);

  }

  public List<SystemUser> findOfficersInDistrict(String districtId) {
    //SELECT s.* from system_user as s, probation_unit as p where USER_ROLE = "OFFICER" AND s.REFERENCE_ID = p.ID AND p.DISTRICT_ID = '21'
    Query query = getSession().createQuery("SELECT user FROM SystemUser user, ProbationUnit unit WHERE user.userRole= 'OFFICER' AND user.referenceId = unit.id AND unit.district.id = :districtId");
    query.setParameter("districtId", districtId);
    
    return query.list();

  }

}
