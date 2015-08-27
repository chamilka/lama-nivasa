package pdn.sci.cs.dao;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.criterion.DetachedCriteria;
import org.hibernate.criterion.Restrictions;
import org.springframework.stereotype.Repository;

import pdn.sci.cs.entity.ChildGuardian;
import pdn.sci.cs.entity.ChildPicture;
import pdn.sci.cs.entity.ChildTransfer;

@Repository
public class ChildTransferDao extends GenericDao<ChildTransfer> {
	
	private static final Class<ChildTransfer> clazz = ChildTransfer.class;
	
	public List<ChildTransfer> findByChildId(String childId) {
		
		DetachedCriteria criteria = createCriteria(clazz);
		
		if(childId != null) {
			criteria.add(Restrictions.eq(ChildPicture.CHILD_ID, childId));
			return findByCriteria(criteria);
			
		} else {
			return new ArrayList<ChildTransfer>(0);
		}
		
	}

}
