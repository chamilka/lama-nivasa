package pdn.sci.cs.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.criterion.DetachedCriteria;
import org.hibernate.criterion.Restrictions;
import org.springframework.stereotype.Repository;

import pdn.sci.cs.entity.District;
import pdn.sci.cs.entity.ProbationUnit;

@Repository
public class ProbationUnitDao extends GenericDao<ProbationUnit> {

private static final Class<ProbationUnit> clazz = ProbationUnit.class;
	
	public List<ProbationUnit> search(ProbationUnit unit) {
		
		DetachedCriteria criteria = createCriteria(clazz);
		if(!unit.getName().isEmpty()) {
			criteria.add(Restrictions.like(ProbationUnit.NAME, "%" + unit.getName() + "%"));
		}
		
		return findByCriteria(criteria);
		
	}

  public List<ProbationUnit> findByDistrictId(String districtId) {
    DetachedCriteria criteria = createCriteria(clazz);
    
    criteria.add(Restrictions.eq(ProbationUnit.DISTRICT_ID, districtId));

    return findByCriteria(criteria);
  }

  public List<ProbationUnit> findByProvince(String province) {
    
    Query query = getSession().createQuery("select pu from ProbationUnit pu, District d, Province p where pu.district.id = d.id AND d.province = p.id AND p.id = :pid");
    query.setParameter("pid", province);
    List<ProbationUnit> list= query.list();
    return list;
  }

public List<ProbationUnit> search(ProbationUnit unit, String referenceId) {
	
	//Query query = getSession().createQuery("select pu from ProbationUnit as pu , District as d , Province as p where pu.district.id = d.id AND d.province.id = p.id AND pu.name LIKE '%:searchName%' And p.id = :rid");
	Query query = getSession().createQuery("select pu from ProbationUnit pu, District d, Province p where pu.district.id = d.id AND d.province = p.id AND p.id = :pid");
//	query.setParameter("searchName", unit.getName());
    query.setParameter("pid", referenceId);
    List<ProbationUnit> list= query.list();
    return list;
}
}
