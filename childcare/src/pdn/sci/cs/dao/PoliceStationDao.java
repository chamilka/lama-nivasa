package pdn.sci.cs.dao;

import java.util.List;

import org.hibernate.criterion.DetachedCriteria;
import org.hibernate.criterion.Restrictions;
import org.springframework.stereotype.Repository;

import pdn.sci.cs.entity.PoliceStation;
import pdn.sci.cs.entity.ProbationUnit;

@Repository
public class PoliceStationDao extends GenericDao<PoliceStation> {

  private static final Class<PoliceStation> clazz = PoliceStation.class;

  public List<PoliceStation> search(PoliceStation unit) {

    DetachedCriteria criteria = createCriteria(clazz);
    if (!unit.getName().isEmpty()) {
      criteria.add(Restrictions.like(ProbationUnit.NAME, "%" + unit.getName() + "%"));
    }

    return findByCriteria(criteria);

  }
}
