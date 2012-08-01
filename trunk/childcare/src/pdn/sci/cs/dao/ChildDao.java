package pdn.sci.cs.dao;

import java.util.List;

import org.hibernate.criterion.DetachedCriteria;
import org.hibernate.criterion.Restrictions;
import org.springframework.stereotype.Repository;

import pdn.sci.cs.entity.Child;

@Repository
public class ChildDao extends GenericDao<Child> {
	
	private static final Class<Child> clazz = Child.class;
	
	public List<Child> search(String name, String lamaNivasaId) {
		DetachedCriteria criteria = createCriteria(clazz);
		if(lamaNivasaId != null && !lamaNivasaId.isEmpty()) {
			criteria.add(Restrictions.eq(Child.LAMA_NIVASA_ID, lamaNivasaId));
		}
		
		if(name != null && !name.isEmpty()) {
			criteria.add(Restrictions.like(Child.FULL_NAME, "%" + name + "%"));
		}
		return findByCriteria(criteria);
		
	}

}