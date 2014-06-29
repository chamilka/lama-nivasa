package pdn.sci.cs.dao;

import java.util.List;

import org.hibernate.criterion.DetachedCriteria;
import org.hibernate.criterion.Restrictions;
import org.springframework.stereotype.Repository;

import pdn.sci.cs.entity.PoliceStation;

@Repository
public class PoliceStationDao extends GenericDao<PoliceStation> {

  private static final Class<PoliceStation> clazz = PoliceStation.class;

  public List<PoliceStation> search(PoliceStation policeStation) {

    DetachedCriteria criteria = createCriteria(clazz);
    
    if (!policeStation.getName().isEmpty()) {
      criteria.add(Restrictions.like(PoliceStation.NAME, "%" + policeStation.getName() + "%"));
    }

    return findByCriteria(criteria);

  }
}
