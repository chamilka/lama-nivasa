package pdn.sci.cs.dao;

import java.util.List;

import org.hibernate.criterion.DetachedCriteria;
import org.hibernate.criterion.Order;
import org.hibernate.criterion.Restrictions;
import org.springframework.stereotype.Repository;

import pdn.sci.cs.entity.BaseEntity;
import pdn.sci.cs.entity.GenericList;

@Repository
public class GenericListDao extends GenericDao<GenericList> {
	
	private static final Class<GenericList> clazz = GenericList.class;
	
	public List<GenericList> findByCategoryId(String categoryId) {
		
		DetachedCriteria criteria = createCriteria(clazz);
		criteria.add(Restrictions.eq(GenericList.CATEGORY_ID, categoryId));
		criteria.addOrder(Order.asc(BaseEntity.SORT_ORDER));
		
		return findByCriteria(criteria);
	}
	
	public List<GenericList> findByCategoryName(String categoryName) {
		
		DetachedCriteria criteria = createCriteria(clazz);
		criteria.add(Restrictions.eq(GenericList.CATEGORY_NAME, categoryName));
		criteria.addOrder(Order.asc(BaseEntity.SORT_ORDER));
		return findByCriteria(criteria);
	}

}
