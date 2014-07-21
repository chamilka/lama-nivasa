package pdn.sci.cs.dao;

import org.hibernate.criterion.DetachedCriteria;
import org.hibernate.criterion.Restrictions;
import org.springframework.stereotype.Repository;

import pdn.sci.cs.entity.District;

@Repository
public class DistrictDao extends GenericDao<District> {

  private static final Class<District> clazz = District.class;
  
  public District findByDistrictCode(String code) {
    DetachedCriteria criteria = createCriteria(clazz);
    criteria.add(Restrictions.eq(District.DISTRICT_CODE, code));

    return findByCriteriaForUniqueResult(criteria);
  }

}
