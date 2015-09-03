package pdn.sci.cs.dao;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.criterion.DetachedCriteria;
import org.hibernate.criterion.Restrictions;
import org.springframework.stereotype.Repository;

import pdn.sci.cs.entity.ChildPicture;
import pdn.sci.cs.entity.ChildTransfer;
import pdn.sci.cs.util.Pager;

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

	public Pager findAllUnconfirmedByProbationUnitId(String referenceId, Integer start, Integer size) {
		  Pager pager = new Pager();

		    start = (start == null) ? 0 : start;
		    pager.setStart(start);

		    size = (size == null) ? Pager.DEFAULT_PAGE_SIZE : size;
		    pager.setSize(size);

		    Query queryCount =
		        getSession()
		            .createQuery(
		                "select count(ct) from ChildTransfer ct,LamaNivasa tl,ProbationUnit p where ct.toLamaNivasaId.id = tl.id and tl.probationUnit.id=p.id and p.id= :pid and ct.status=0");
		    queryCount.setParameter("pid", referenceId);
		    int listCount = ((Long) queryCount.uniqueResult()).intValue();
		    pager.setTotal(listCount);

		    Query query =
		        getSession()
		            .createQuery(
		                "select ct from ChildTransfer ct,LamaNivasa tl,ProbationUnit p where ct.toLamaNivasaId.id = tl.id and tl.probationUnit.id=p.id and p.id= :pid and ct.status=0");

		    query.setParameter("pid", referenceId);
		    query.setFirstResult(start);
		    query.setMaxResults(size);
		    @SuppressWarnings("unchecked")
		    List<ChildTransfer> list = query.list();

		    pager.setList(list);

		    return pager;
	}

	public int findActiveTransferByChildId(String id) {
		
		 Query queryCount =
			        getSession()
			            .createQuery(
			                "select count(ct) from ChildTransfer ct where ct.child.id = :pid and ct.status=0");
		 queryCount.setParameter("pid", id);
		 
		 int listCount = ((Long) queryCount.uniqueResult()).intValue();
		return listCount;
	}

	public ChildTransfer findByIdChildID(String childId) {
		Query query =
		        getSession()
		            .createQuery(
		                "select ct from ChildTransfer ct where ct.child.id = :pid and ct.status=0");
		query.setParameter("pid", childId);
		return (ChildTransfer) query.uniqueResult();
	}

}
