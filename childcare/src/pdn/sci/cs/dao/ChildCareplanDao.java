package pdn.sci.cs.dao;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.criterion.DetachedCriteria;
import org.hibernate.criterion.Restrictions;
import org.springframework.stereotype.Repository;

import pdn.sci.cs.entity.ChildCareplan;
import pdn.sci.cs.entity.ChildRecord;

@Repository
public class ChildCareplanDao extends GenericDao<ChildCareplan> {

	private static final Class<ChildCareplan> clazz = ChildCareplan.class;

	public List<ChildCareplan> findByChildId(String childId) {

		DetachedCriteria criteria = createCriteria(clazz);

		if(childId != null) {
			criteria.add(Restrictions.eq(ChildRecord.CHILD_ID, childId));
			return findByCriteria(criteria);

		} else {
			return new ArrayList<ChildCareplan>(0);
		}

	}

}
