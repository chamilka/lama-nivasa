package pdn.sci.cs.dao;

import java.util.List;

import org.apache.log4j.Logger;
import org.hibernate.Query;
import org.hibernate.criterion.DetachedCriteria;
import org.hibernate.criterion.Restrictions;
import org.springframework.stereotype.Repository;

import pdn.sci.cs.entity.*;

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
  
 
  public List<MonthlyDataReport> report(int year, String month, String searchDistrict) {
    String sql = "SELECT 'ID_0' as ID, "
                + "0 as MUN_OF_MALE_HAVING_SPECIAL_REQUIREMENTS,"
                + "0 as NUM_OF_FEMALE_HAVING_SPECIAL_REQUIREMENTS,"
                + "0 as NUM_OF_MEETINGS_UPTO_NOW,"
                + "0 as NUM_OF_OFFICERS,"
                + "0 as NUM_OF_VACANT_OFFICERS,"+
                  "SUM(NUM_OF_MALE_CHILDREN) AS NUM_OF_MALE_CHILDREN," +
                  "SUM(NUM_OF_FEMALE_CHILDREN) AS NUM_OF_FEMALE_CHILDREN," +
                  "SUM(NUM_OF_FEMALE_REUNIFICATION) AS NUM_OF_FEMALE_REUNIFICATION," +
                  "SUM(NUM_OF_MALE_REUNIFICATION) AS NUM_OF_MALE_REUNIFICATION," +
                  "SUM(NUM_OF_FEMALE_TRANSFERS) AS NUM_OF_FEMALE_TRANSFERS," +
                  "SUM(NUM_OF_MALE_TRANSFERS) AS NUM_OF_MALE_TRANSFERS," +
                  "SUM(NUM_OF_PROFORMA_FEMALE) AS NUM_OF_PROFORMA_FEMALE," +
                  "SUM(NUM_OF_PROFORMA_MALE) AS NUM_OF_PROFORMA_MALE," +
                  "SUM(NUM_OF_FEMALE_NO_GUARDIANS) AS NUM_OF_FEMALE_NO_GUARDIANS," +
                  "SUM(NUM_OF_MALE_NO_GUARDIANS) AS NUM_OF_MALE_NO_GUARDIANS," +
                  "SUM(NUM_OF_FEMALE_TERMINATES) AS NUM_OF_FEMALE_TERMINATES," +
                  "SUM(NUM_OF_MALE_TERMINATES) AS NUM_OF_MALE_TERMINATES," +
                  "SUM(NUM_OF_INTAKES) AS NUM_OF_INTAKES," +
                  "SUM(INTAKE_FROM_COURT) AS INTAKE_FROM_COURT," +
                  "SUM(INTAKE_FROM_DEPARTMENT) AS INTAKE_FROM_DEPARTMENT," +
                  "SUM(INTAKE_FROM_PARENTS) AS INTAKE_FROM_PARENTS," +
                  "SUM(INTAKE_FROM_ORGANIZATIONS) AS INTAKE_FROM_ORGANIZATIONS," +
                  "SUM(INTAKE_FROM_OTHER) AS INTAKE_FROM_OTHER," +
                  "SUM(NUM_TO_MARRAGE) AS NUM_TO_MARRAGE," + 
                  "SUM(NUM_TO_ADOPTION) as NUM_TO_ADOPTION,"
                  + "SUM(NUM_TO_PARENT) as NUM_TO_PARENT," +
                  "SUM(NUM_TO_EMPLOYEMENT) AS NUM_TO_EMPLOYEMENT," +
                  "SUM(NUM_TO_VOCATIONAL) AS NUM_TO_VOCATIONAL," +
                  "SUM(NUM_TO_SELF_EMPLOYEMENT) AS NUM_TO_SELF_EMPLOYEMENT," +
                  "SUM(NUM_TO_OTHER) AS NUM_TO_OTHER," +
                  "SUM(NUM_NO_CHILD_PLANS) AS NUM_NO_CHILD_PLANS," +
                  "SUM(NUM_DEVIATED_CHILD_PLANS) AS NUM_DEVIATED_CHILD_PLANS" +
                  " FROM monthly_data as md, lama_nivasa as ln, probation_unit as pu, district as d" +
                  " WHERE 1<> 0 "+
                  "AND md.LAMA_NIVASA_ID=ln.ID AND ln.PROBATION_UNIT_ID = pu.ID AND pu.DISTRICT_ID  = d.ID"; 
    
    if(!(searchDistrict.equals("-1"))){
      sql += " AND d.ID = \'" + searchDistrict + "\'";
    }
    if(year != 0) {
       sql += " AND YEAR = " + year;
     }
     
     if(!month.isEmpty()) {
       sql += " AND MONTH = \'" + month + "\'";
     }
      
     Query query = getSession().createSQLQuery(sql).addEntity(MonthlyDataReport.class);
     List<MonthlyDataReport> list = query.list();
     
     return list;
     
  }
}
