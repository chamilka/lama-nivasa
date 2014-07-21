package pdn.sci.cs.dao;

import java.util.List;

import org.hibernate.criterion.DetachedCriteria;
import org.hibernate.criterion.Restrictions;
import org.springframework.stereotype.Repository;

import pdn.sci.cs.entity.GramaSevakaDivision;

@Repository
public class GramaSevakaDivisionDao extends GenericDao<GramaSevakaDivision> {

  public List<GramaSevakaDivision> findByDivisionalSecretariatId(String id) {
    DetachedCriteria criteria = createCriteria(getPersistentClass());
    criteria.add(Restrictions.eq(GramaSevakaDivision.DIVISIONAL_SECRETARIAT_ID, id));

    return findByCriteria(criteria);
  }

}
