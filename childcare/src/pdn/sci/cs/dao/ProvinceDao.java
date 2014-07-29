package pdn.sci.cs.dao;

import org.hibernate.criterion.DetachedCriteria;
import org.hibernate.criterion.Restrictions;
import org.springframework.stereotype.Repository;

import pdn.sci.cs.entity.Province;

@Repository
public class ProvinceDao extends GenericDao<Province> {

  private static final Class<Province> clazz = Province.class;
  
  public Province findByProvinceName(String name) {
    DetachedCriteria criteria = createCriteria(clazz);
    criteria.add(Restrictions.eq(Province.PROVINCE_NAME, name));

    return findByCriteriaForUniqueResult(criteria);
  }

}
