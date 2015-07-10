package pdn.sci.cs.dao;

import java.awt.print.Printable;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.criterion.DetachedCriteria;
import org.hibernate.criterion.Restrictions;
import org.springframework.stereotype.Repository;

import pdn.sci.cs.entity.LamaNivasa;
import pdn.sci.cs.entity.Province;

@Repository
public class ProvinceDao extends GenericDao<Province> {

  private static final Class<Province> clazz = Province.class;

  public Province findByProvinceName(String name) {
    DetachedCriteria criteria = createCriteria(clazz);
    criteria.add(Restrictions.eq(Province.PROVINCE_NAME, name));

    return findByCriteriaForUniqueResult(criteria);
  }

  public String findByReferenceId(String referenceId) {

     Query query = getSession().createQuery("select p.id from Province p, District d, ProbationUnit pu where p.id = d.province AND pu.district.id = d.id AND pu.id = :pid");
     query.setParameter("pid", referenceId);
     List<String> l= query.list();
     return l.get(0);
    
  }

public List<Province> findByReferenceIdASaList(String referenceId) {
	Query query = getSession().createQuery("select p from Province p where p.id = :pid");
    query.setParameter("pid", referenceId);
    List<Province> l= query.list();
    return l;
}

}
