package pdn.sci.cs.dao;

import java.util.List;

import org.apache.log4j.Logger;
import org.hibernate.criterion.DetachedCriteria;
import org.hibernate.criterion.Restrictions;
import org.springframework.stereotype.Repository;

import pdn.sci.cs.entity.MonthlyData;

@Repository
public class MonthlyDataDao extends GenericDao<MonthlyData> {

  private static final Class<MonthlyData> clazz = MonthlyData.class;
  private static Logger logger = Logger.getLogger(clazz);

  public List<MonthlyData> search(MonthlyData monthlyData) {

    DetachedCriteria criteria = createCriteria(clazz);
    if (monthlyData.getId() != null && !monthlyData.getId().isEmpty()) {
      criteria.add(Restrictions.eq(MonthlyData.ID, monthlyData.getId()));
    }

    if (monthlyData.getLamaNivasa() != null && !monthlyData.getLamaNivasa().getId().isEmpty()) {
      criteria
          .add(Restrictions.eq(MonthlyData.LAMA_NIVASA_ID, monthlyData.getLamaNivasa().getId()));
    }

    if (monthlyData.getYear() != null) {
      criteria.add(Restrictions.eq(MonthlyData.YEAR, monthlyData.getYear()));
    }

    if (!monthlyData.getMonth().isEmpty()) {
      criteria.add(Restrictions.eq(MonthlyData.MONTH, monthlyData.getMonth()));
    }

    return findByCriteria(criteria);
  }

  public void delete(String id, Integer year, String month) {
    DetachedCriteria criteria = createCriteria(clazz);

    criteria.add(Restrictions.eq(MonthlyData.MONTH, month));
    criteria.add(Restrictions.eq(MonthlyData.YEAR, year));
    criteria.add(Restrictions.eq(MonthlyData.LAMA_NIVASA_ID, id));

    List<MonthlyData> list = findByCriteria(criteria);
    logger.info("Going to delete monthly data");
    for (MonthlyData md : list) {
      logger.info(md);
      delete(md);
    }

  }
}
