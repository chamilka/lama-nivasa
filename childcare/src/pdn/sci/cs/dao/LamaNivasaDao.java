package pdn.sci.cs.dao;

import java.util.Calendar;
import java.util.GregorianCalendar;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.criterion.DetachedCriteria;
import org.hibernate.criterion.Order;
import org.hibernate.criterion.Restrictions;
import org.springframework.stereotype.Repository;

import pdn.sci.cs.entity.Child;
import pdn.sci.cs.entity.LamaNivasa;
import pdn.sci.cs.util.Pager;

@Repository
public class LamaNivasaDao extends GenericDao<LamaNivasa> {

  private static final Class<LamaNivasa> clazz = LamaNivasa.class;

  public List<LamaNivasa> search(LamaNivasa lamaNivasa) {

    DetachedCriteria criteria = createCriteria(clazz);
    if (!lamaNivasa.getName().isEmpty()) {
      criteria.add(Restrictions.like(LamaNivasa.NAME, "%" + lamaNivasa.getName() + "%"));
    }

    if (lamaNivasa.getProbationUnit() != null
        && lamaNivasa.getProbationUnit().getId().trim().length() != 0) {
      criteria.add(Restrictions.eq(LamaNivasa.PROBATION_UNIT_ID, lamaNivasa.getProbationUnit()
          .getId()));
    }

    return findByCriteria(criteria);

  }

  public Pager findAll(Integer start, Integer size) {

    DetachedCriteria criteria = createCriteria(getPersistentClass());
    criteria.add(Restrictions.eq(LamaNivasa.STATUS, 0));
    criteria.addOrder(Order.asc("id"));
    return super.find(criteria, start, size);

  }

  public List<LamaNivasa> findByReferenceId(String referenceId) {
    DetachedCriteria criteria = createCriteria(clazz);
    criteria.add(Restrictions.eq(LamaNivasa.STATUS, 0));
    criteria.add(Restrictions.eq(LamaNivasa.PROBATION_UNIT_ID, referenceId));

    return findByCriteria(criteria);
  }

  public Pager findAllDeleted(Integer pageStart, Integer pageSize) {

    DetachedCriteria criteria = createCriteria(getPersistentClass());
    criteria.add(Restrictions.eq(LamaNivasa.STATUS, 1));
    criteria.addOrder(Order.asc("id"));
    return super.find(criteria, pageStart, pageSize);
  }

  public List<LamaNivasa> findByProvinceId(String province) {

    Query query =
        getSession()
            .createQuery(
                "select ln from LamaNivasa ln, ProbationUnit pu, District d, Province p where ln.probationUnit.id = pu.id AND pu.district.id = d.id AND d.province = p.id AND ln.status=0 AND p.id = :pid");
    query.setParameter("pid", province);
    List<LamaNivasa> list = query.list();
    return list;
  }

  public List<LamaNivasa> findDeletedByProvinceId(String province) {
    Query query =
        getSession()
            .createQuery(
                "select ln from LamaNivasa ln, ProbationUnit pu, District d, Province p where ln.probationUnit.id = pu.id AND pu.district.id = d.id AND d.province = p.id AND ln.status=1 AND p.id = :pid");
    query.setParameter("pid", province);
    List<LamaNivasa> list = query.list();
    return list;
  }

  public List<LamaNivasa> findDeletedByProbationUnitID(String probationUnitID) {
    Query query =
        getSession()
            .createQuery(
                "select ln from LamaNivasa ln, ProbationUnit pu where ln.probationUnit.id = pu.id AND ln.status=1 AND pu.id = :pid");
    query.setParameter("pid", probationUnitID);
    List<LamaNivasa> list = query.list();
    return list;
  }

  public List<LamaNivasa> findAllLamaNivasa() {
    Query query =
        getSession()
            .createQuery(
                "select ln from LamaNivasa ln where ln.status=0");
    List<LamaNivasa> list = query.list();
    return list;
  }

public List<LamaNivasa> SearchWithProviceDistrict(LamaNivasa lamaNivasa, String provinceId, String districtId) {

	DetachedCriteria criteria = createCriteria(clazz);
	criteria.createAlias("probationUnit", "p");
    criteria.createAlias("p.district", "d");
    criteria.createAlias("d.province", "pr");
	
    if (!lamaNivasa.getName().isEmpty()) {
      criteria.add(Restrictions.like(LamaNivasa.NAME, "%" + lamaNivasa.getName() + "%"));
    }

    if (lamaNivasa.getProbationUnit() != null
        && lamaNivasa.getProbationUnit().getId().trim().length() != 0) {
      criteria.add(Restrictions.eq(LamaNivasa.PROBATION_UNIT_ID, lamaNivasa.getProbationUnit()
          .getId()));
    }
    
    if (districtId != null && !districtId.equals("-1")) {
        criteria.add(Restrictions.eq("d.id", districtId));
	  }
	  if (provinceId != null && !provinceId.equals("-1")) {
	    criteria.add(Restrictions.eq("pr.id", provinceId));
	  }
      
    return findByCriteria(criteria);
    
    
  }


}
