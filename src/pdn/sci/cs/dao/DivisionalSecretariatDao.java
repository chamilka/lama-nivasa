package pdn.sci.cs.dao;

import java.util.List;

import org.hibernate.criterion.DetachedCriteria;
import org.hibernate.criterion.Order;
import org.hibernate.criterion.Restrictions;
import org.springframework.stereotype.Repository;

import pdn.sci.cs.entity.BaseEntity;
import pdn.sci.cs.entity.DivisionalSecretariat;

@Repository
public class DivisionalSecretariatDao extends GenericDao<DivisionalSecretariat> {

	public List<DivisionalSecretariat> findByDistrictId(String districtId) {
		DetachedCriteria criteria = createCriteria(getPersistentClass());
		criteria.add(Restrictions.eq(DivisionalSecretariat.DISTRICT_ID, districtId));
		criteria.addOrder(Order.asc(BaseEntity.SORT_ORDER));
		
		return findByCriteria(criteria);
	}
}
