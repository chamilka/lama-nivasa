package pdn.sci.cs.dao;

import java.lang.reflect.ParameterizedType;
import java.util.ArrayList;
import java.util.List;

import org.apache.log4j.Logger;
import org.hibernate.Criteria;
import org.hibernate.criterion.DetachedCriteria;
import org.hibernate.criterion.Order;
import org.hibernate.criterion.Projections;
import org.springframework.dao.DataAccessException;
import org.springframework.orm.hibernate3.HibernateOptimisticLockingFailureException;
import org.springframework.stereotype.Repository;

import pdn.sci.cs.entity.BaseEntity;
import pdn.sci.cs.util.Pager;


@Repository("genericDao")
public abstract class GenericDao<T extends BaseEntity> extends BaseDao {

	public static final int MIN_INDEX = 0;
	private static Logger logger = Logger.getLogger(GenericDao.class);
	private Class<T> persistentClass;

	@SuppressWarnings("unchecked")
	public GenericDao(){
	   this.persistentClass = (Class<T>)((ParameterizedType) getClass().getGenericSuperclass()).getActualTypeArguments()[0];
	}

	public List<T> findAll(Class<T> clazz) throws DataAccessException {
		return getHibernateTemplate().loadAll(clazz);
	}

	/*public List<T> findAll() throws DataAccessException {

		return getHibernateTemplate().loadAll(persistentClass);
	}*/

	public List<T> findAll() {
		DetachedCriteria criteria = createCriteria(persistentClass);
		criteria.addOrder(Order.asc(BaseEntity.SORT_ORDER));

		return findByCriteria(criteria);
	}

	protected Integer findByCritiriaUniqueLongResult(DetachedCriteria criteria) {
		try {
			@SuppressWarnings("unchecked")
			List<Integer> results = getHibernateTemplate().findByCriteria(criteria);

			if(results != null && results.size() != 0) {
				return results.get(0);
			} else {
				return null;
			}

		} catch (DataAccessException e) {
			e.printStackTrace();
			logger.error("Criteria query execution error for unique result");
			return null;
		}
    }

	public Pager find(DetachedCriteria criteria, Integer start, Integer size) {

		Pager pager = new Pager();

		start = (start == null) ? 0 : start;
		pager.setStart(start);

		size = (size == null) ? Pager.DEFAULT_PAGE_SIZE : size;
		pager.setSize(size);
		pager.setTotal(getCount(criteria)); //getCount(criteria)

		criteria.setProjection(null);
		criteria.setResultTransformer(Criteria.ROOT_ENTITY);
		pager.setList(findByCriteria(criteria, start, size));

		return pager;
	}

	protected Integer getCount(DetachedCriteria criteria) {

		criteria.setProjection(Projections.rowCount());
		int total = findByCritiriaUniqueLongResult(criteria);

		return total;
	}


	public T findById(String id) {
		try{
		  return (T)getHibernateTemplate().load(getPersistentClass(), id);
		}catch (Exception e) {
		  return null;
		}
	}

	public void saveAll(T... entities) {
		for (T entity : entities) {
			if (entity != null) {
				save(entity);
			} else {
				throw new NullPointerException("NULL object cannot be saved " + entities.getClass());
			}
		}
	}

	public void update(T entity) throws HibernateOptimisticLockingFailureException {
		try {
			getHibernateTemplate().update(entity);
			getHibernateTemplate().flush();
		}catch (org.springframework.orm.hibernate3.HibernateSystemException e) {
			logger.error(e);
		}
	}

	public void updateAll(T... entities) {
		for (T entity : entities) {
			if (entity != null) {
				update(entity);
			} else {
				logger.error("NULL object cannot be updated " + entities.getClass());
				throw new NullPointerException("NULL object cannot be updated " + entities.getClass());
			}
		}

		getHibernateTemplate().flush();
	}

	public void deleteById(String id){
		T t = findById(id);
		if( t != null){
			getHibernateTemplate().delete(t);
			getHibernateTemplate().flush();
		} else {
			logger.error("NULL object cannot be deleted ");
		}
	}

	public void delete(T entity){
		if( entity != null){
			getHibernateTemplate().delete(entity);
			getHibernateTemplate().flush();
		} else {
		    logger.error("NULL object cannot be deleted ");
			throw new NullPointerException("NULL object cannot be deleted ");
		}
	}

	protected void deleteEntities(T... entities) {
		for (T entity : entities) {
			if (entity != null) {
				delete(entity);
			}
		}

		getHibernateTemplate().flush();
	}

	protected DetachedCriteria createCriteria(Class<T> t) {
		return DetachedCriteria.forClass(t);
	}

	@SuppressWarnings("unchecked")
	protected List<T> findByCriteria(DetachedCriteria criteria) {
        try {
		List<T> results = getHibernateTemplate().findByCriteria(criteria);

        if (results == null) {
            return new ArrayList<T>();
        }

        return results;
        }catch(Exception e) {
        	System.out.println(e.toString());
        	return null;
        }
    }

	@SuppressWarnings("unchecked")
	protected List<T> findByCriteria(DetachedCriteria criteria, int min, int max) {

		List<T> results = getHibernateTemplate().findByCriteria(criteria, min, max);

		 if (results == null) {
	            return new ArrayList<T>();
	     }

	    return results;

    }

	protected List<T> findByCriteria(DetachedCriteria criteria, int max) {
		return findByCriteria(criteria, MIN_INDEX, max);
    }

	@SuppressWarnings("unchecked")
	protected T findByCriteriaForUniqueResult(DetachedCriteria criteria) {
		try {
			List<T> results = getHibernateTemplate().findByCriteria(criteria);

			if(results != null && results.size() != 0) {
				return results.get(0);
			} else {
				return null;
			}

		} catch (DataAccessException e) {
			logger.error("Criteria query execution error for unique result");
			return null;
		}
    }

	@SuppressWarnings("unchecked")
	public List<T> findByExample(T obj) {
	    return getHibernateTemplate().findByExample(obj);
	}

	@SuppressWarnings("unchecked")
	public List<Object> groupedByCriteria(DetachedCriteria criteria){
		try{
			List<Object> list = getHibernateTemplate().findByCriteria(criteria);
			return list;
		}catch (DataAccessException e) {
			logger.error("Criteria query execution error for count result");
			return null;
		}

	}


    protected Integer countByCriteria(DetachedCriteria criteria) {
    	try {
	        criteria.setProjection(Projections.rowCount());

	        @SuppressWarnings("unchecked") List<Integer> results = getHibernateTemplate().findByCriteria(criteria);

	        if (results == null || results.size() == 0) {
	            return Integer.valueOf(0);
	        }

	        return results.get(0);
    	}catch(Exception e) {
    		logger.error(e);
    		return Integer.valueOf(0);
    	}
    }


    protected Double avgByCriteria(DetachedCriteria criteria) {
    	try {

    		@SuppressWarnings("unchecked") List<Double> results = getHibernateTemplate().findByCriteria(criteria);

	        if (results == null || results.size() == 0) {
	            return Double.valueOf(0.0);
	        }

	        return results.get(0);

    	} catch(Exception e) {
    		logger.error(e);
    		return Double.valueOf(0.0);
    	}
    }

	@SuppressWarnings("unchecked")
	protected List<T> findByQuery(String query) {
		return getHibernateTemplate().find(query);
	}

	public Class<T> getPersistentClass() {
		return persistentClass;
	}

	public void setPersistentClass(Class<T> persistentClass) {
		this.persistentClass = persistentClass;
	}


	public T save(T t) {
		try {
			getHibernateTemplate().save(t);
			getHibernateTemplate().flush();
			return t;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return t;
	}

	public T merge(T t) {
		try {
			getHibernateTemplate().merge(t);
			getHibernateTemplate().flush();
			return t;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return t;
	}

}
