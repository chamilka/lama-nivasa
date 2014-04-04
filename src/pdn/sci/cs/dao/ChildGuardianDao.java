package pdn.sci.cs.dao;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.criterion.DetachedCriteria;
import org.hibernate.criterion.Restrictions;
import org.springframework.stereotype.Repository;

import pdn.sci.cs.entity.ChildGuardian;
import pdn.sci.cs.entity.ChildPicture;

@Repository
public class ChildGuardianDao extends GenericDao<ChildGuardian> {
	
	private static final Class<ChildGuardian> clazz = ChildGuardian.class;
	
	public List<ChildGuardian> findByChildId(String childId) {
		
		DetachedCriteria criteria = createCriteria(clazz);
		
		if(childId != null) {
			criteria.add(Restrictions.eq(ChildPicture.CHILD_ID, childId));
			return findByCriteria(criteria);
			
		} else {
			return new ArrayList<ChildGuardian>(0);
		}
		
	}

}
