package pdn.sci.cs.dao;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.criterion.DetachedCriteria;
import org.hibernate.criterion.Restrictions;
import org.springframework.stereotype.Repository;

import pdn.sci.cs.entity.ChildPicture;

@Repository
public class ChildPictureDao extends GenericDao<ChildPicture> {
	
	private static final Class<ChildPicture> clazz = ChildPicture.class;
	
	public List<ChildPicture> findByChildId(String childId) {
		DetachedCriteria criteria = createCriteria(clazz);
		if(childId != null) {
			criteria.add(Restrictions.eq(ChildPicture.CHILD_ID, childId));
			return findByCriteria(criteria);
			
		} else {
			return new ArrayList<ChildPicture>(0);
		}
		
	}

}
