package pdn.sci.cs.dao;

import java.util.List;

import org.hibernate.criterion.DetachedCriteria;
import org.hibernate.criterion.Order;
import org.hibernate.criterion.Restrictions;
import org.springframework.stereotype.Repository;

import pdn.sci.cs.entity.LamaNivasa;
import pdn.sci.cs.util.Pager;

@Repository
public class LamaNivasaDao extends GenericDao<LamaNivasa> {

private static final Class<LamaNivasa> clazz = LamaNivasa.class;

	public List<LamaNivasa> search(LamaNivasa lamaNivasa) {

		DetachedCriteria criteria = createCriteria(clazz);
		if(!lamaNivasa.getName().isEmpty()) {
			criteria.add(Restrictions.like(LamaNivasa.NAME, "%" + lamaNivasa.getName() + "%"));
		}

		/*if(lamaNivasa.getDivisionalSecretariat()  != null && lamaNivasa.getDivisionalSecretariat().getId().trim().length() != 0 ) {
			criteria.add(Restrictions.eq(LamaNivasa.DIVISIONAL_SECRETARIAT_ID, lamaNivasa.getDivisionalSecretariat().getId()));
		}*/

		if(lamaNivasa.getProbationUnit()  != null && lamaNivasa.getProbationUnit().getId().trim().length() != 0 ) {
			criteria.add(Restrictions.eq(LamaNivasa.PROBATION_UNIT_ID, lamaNivasa.getProbationUnit().getId()));
		}

		return findByCriteria(criteria);

	}

	public Pager findAll(Integer start, Integer size) {

		DetachedCriteria criteria = createCriteria(getPersistentClass());
		criteria.addOrder(Order.asc("id"));
		return super.find(criteria, start, size);

	}

}