package pdn.sci.cs.dao;

import javax.annotation.PostConstruct;
import javax.annotation.Resource;

import org.hibernate.SessionFactory;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

public class BaseDao extends HibernateDaoSupport {
	
	@Resource
	protected SessionFactory sessionFactory;

	@PostConstruct
    public void init() {
        super.setSessionFactory(sessionFactory);
    }
	
}
