package pdn.sci.cs.dao;

import java.util.Calendar;
import java.util.GregorianCalendar;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.criterion.DetachedCriteria;
import org.hibernate.criterion.Order;
import org.hibernate.criterion.Restrictions;
import org.springframework.stereotype.Repository;

import pdn.sci.cs.entity.Child;
import pdn.sci.cs.util.ChildrenSummary;
import pdn.sci.cs.util.MaleFemale;
import pdn.sci.cs.util.Pager;

@Repository
public class ChildDao extends GenericDao<Child> {

	private static final Class<Child> clazz = Child.class;

	public Pager search(String name, String code, String lamaNivasaId, Integer start, Integer size) {
		DetachedCriteria criteria = createCriteria(clazz);

		if(lamaNivasaId != null && !lamaNivasaId.isEmpty()) {
			criteria.add(Restrictions.eq(Child.LAMA_NIVASA_ID, lamaNivasaId));
		}

		if(name != null && !name.isEmpty()) {
			criteria.add(Restrictions.like(Child.FULL_NAME, "%" + name + "%"));
		}

		if(code != null && !code.isEmpty()) {
			criteria.add(Restrictions.eq(Child.CODE, code));
		}

		return super.find(criteria, start, size);
		//return findByCriteria(criteria);

	}

	public Pager findAll(Integer start, Integer size) {
		DetachedCriteria criteria = createCriteria(getPersistentClass());
		criteria.addOrder(Order.asc("id"));
		criteria.add(Restrictions.eq(Child.STATUS, 0));
		return super.find(criteria, start, size);
	}
	
	public Pager findAllDeleted(Integer start, Integer size) {
		DetachedCriteria criteria = createCriteria(getPersistentClass());
		criteria.addOrder(Order.asc("id"));
		criteria.add(Restrictions.eq(Child.STATUS, 1));
		return super.find(criteria, start, size);
	}

	public Pager findAllByLamaNivasaId(String lamaNivasaId, Integer start, Integer size) {

		DetachedCriteria criteria = createCriteria(getPersistentClass());
		criteria.addOrder(Order.asc("id"));
		criteria.add(Restrictions.eq(Child.LAMA_NIVASA_ID, lamaNivasaId));
		criteria.add(Restrictions.eq(Child.STATUS, 0));
		return super.find(criteria, start, size);
	}
	
	public Pager findAllDeletedByLamaNivasaId(String lamaNivasaId, Integer start, Integer size) {
		
		DetachedCriteria criteria = createCriteria(getPersistentClass());
		criteria.addOrder(Order.asc("id"));
		criteria.add(Restrictions.eq(Child.LAMA_NIVASA_ID, lamaNivasaId));
		criteria.add(Restrictions.eq(Child.STATUS, 1));
		return super.find(criteria, start, size);
	}

	public ChildrenSummary buildChildSummary() {
		ChildrenSummary cs = new ChildrenSummary();

		cs.setCount(getSexTypeCount());
		cs.setBuddhist(getTypeCount(Child.RELIGION, "BUDDHIST", 0, null));
		cs.setRomanCatholic(getTypeCount(Child.RELIGION, "ROMAN CATHOLIC", 0, null));
		cs.setChristianity(getTypeCount(Child.RELIGION, "CHRISTIANITY", 0, null));
		cs.setIslam(getTypeCount(Child.RELIGION, "ISLAM", 0, null));
		cs.setHinduism(getTypeCount(Child.RELIGION, "HINDUISM", 0, null));
		cs.setReligionOther(getTypeCount(Child.RELIGION, "OTHER", 0, null));

		cs.setSinhala(getTypeCount(Child.RACE, "SINHALA", 0, null));
		cs.setSrilankanTamil(getTypeCount(Child.RACE, "SRILANKAN TAMIL", 0, null));
		cs.setIndianTamil(getTypeCount(Child.RACE, "INDIAN TAMIL", 0, null));
		cs.setMuslim(getTypeCount(Child.RACE, "MUSLIM", 0, null));
		cs.setRaceOther(getTypeCount(Child.RACE, "OTHER", 0, null));

		cs.setParentBoth(getTypeCount(Child.PARENT_AVAILABILITY, "BOTH", 0, null));
		cs.setParentMotherOnly(getTypeCount(Child.PARENT_AVAILABILITY, "MOTHER ONLY", 0, null));
		cs.setParentFatherOnly(getTypeCount(Child.PARENT_AVAILABILITY, "FATHER ONLY", 0, null));
		cs.setParentNone(getTypeCount(Child.PARENT_AVAILABILITY, "NONE", 0, null));

		cs.setIntakeCourt(getTypeCount(Child.INTAKE_METHOD, "COURT", 0, null));
		cs.setIntakeDepartment(getTypeCount(Child.INTAKE_METHOD, "DEPARTMENT", 0, null));
		cs.setIntakeDirect(getTypeCount(Child.INTAKE_METHOD, "DIRECT", 0, null));
		cs.setIntakeParent(getTypeCount(Child.INTAKE_METHOD, "PARENT", 0, null));

		Calendar today = GregorianCalendar.getInstance();
		Calendar twoYear = (Calendar)today.clone();
		twoYear.add(Calendar.YEAR, -2);
		cs.setAgeLessThanTwo(getAgeRangeCount(Child.DATE_OF_BIRTH, twoYear, today));

		Calendar fiveYear = (Calendar)twoYear.clone();
		fiveYear.add(Calendar.YEAR, -3);
		cs.setAgeLessThanFive(getAgeRangeCount(Child.DATE_OF_BIRTH, fiveYear, twoYear));

		Calendar tenYear = (Calendar)fiveYear.clone();
		tenYear.add(Calendar.YEAR, -5);
		cs.setAgeLessThanTen(getAgeRangeCount(Child.DATE_OF_BIRTH, tenYear, fiveYear));

		Calendar eighteenYear = (Calendar)tenYear.clone();
		eighteenYear.add(Calendar.YEAR, -8);
		cs.setAgeLessThanEighteen(getAgeRangeCount(Child.DATE_OF_BIRTH, eighteenYear, tenYear));

		return cs;
	}

	private DetachedCriteria maleCriteria() {
		DetachedCriteria criteria;

		criteria = createCriteria(getPersistentClass());
		criteria.add(Restrictions.eq(Child.SEX_TYPE, Child.MALE));

		return criteria;
	}

	private DetachedCriteria femaleCriteria() {
		DetachedCriteria criteria;

		criteria = createCriteria(getPersistentClass());
		criteria.add(Restrictions.eq(Child.SEX_TYPE, Child.FEMALE));

		return criteria;
	}

	private DetachedCriteria maleCriteriaByRestriction(String key, String value, int age, String district) {
		DetachedCriteria criteria;

		criteria = createCriteria(getPersistentClass());
		criteria.add(Restrictions.eq(Child.SEX_TYPE, Child.MALE));
		criteria.add(Restrictions.eq(key, value));
		
		if(age != 0) {
		  Calendar today = GregorianCalendar.getInstance();
	      Calendar before = (Calendar)today.clone();
	      before.add(Calendar.YEAR, -age);
	      criteria.add(Restrictions.between(key, before, today));
		}
		
		if(district.equals("-1")) {
		  
		}
		
		return criteria;
	}

	private DetachedCriteria femaleCriteriaByRestriction(String key, String value, int age, String district) {
		DetachedCriteria criteria;

		criteria = createCriteria(getPersistentClass());
		criteria.add(Restrictions.eq(Child.SEX_TYPE, Child.FEMALE));
		criteria.add(Restrictions.eq(key, value));
		return criteria;
	}

	private DetachedCriteria femaleCriteriaDateRangeByRestriction(String key,
			Calendar startDate, Calendar endDate) {
		DetachedCriteria criteria;

		criteria = createCriteria(getPersistentClass());
		criteria.add(Restrictions.eq(Child.SEX_TYPE, Child.FEMALE));
		criteria.add(Restrictions.between(key, startDate, endDate));

		return criteria;
	}

	private DetachedCriteria maleCriteriaDateRangeByRestriction(String key,
			Calendar startDate, Calendar endDate) {
		DetachedCriteria criteria;

		criteria = createCriteria(getPersistentClass());
		criteria.add(Restrictions.eq(Child.SEX_TYPE, Child.MALE));
		criteria.add(Restrictions.between(key, startDate, endDate));

		return criteria;
	}

	private MaleFemale getSexTypeCount() {

		int male = getCount(maleCriteria());
		int female = getCount(femaleCriteria());

		return new MaleFemale(male, female);
	}


	private MaleFemale getTypeCount(String key, String value, int age, String district) {

		int male = getCount(maleCriteriaByRestriction(key, value, age, district));
		int female = getCount(femaleCriteriaByRestriction(key, value, age, district));
		
		return new MaleFemale(male, female);
	}

	private MaleFemale getAgeRangeCount(String key, Calendar startDate, Calendar endDate) {

		int male = getCount(maleCriteriaDateRangeByRestriction(key, startDate, endDate));
		int female = getCount(femaleCriteriaDateRangeByRestriction(key, startDate, endDate));

		return new MaleFemale(male, female);
	}

	public Pager findAllByProbationUnitId(String referenceId, Integer start, Integer size) {
		Pager pager = new Pager();

		start = (start == null) ? 0 : start;
		pager.setStart(start);

		size = (size == null) ? Pager.DEFAULT_PAGE_SIZE : size;
		pager.setSize(size);
		
		Query queryCount = getSession().createQuery("select count(c) from Child c,LamaNivasa l,ProbationUnit p where c.lamaNivasa.id=l.id and l.probationUnit.id=p.id and p.id= :pid and c.status=0");
		queryCount.setParameter("pid", referenceId);
		int listCount= ((Long)queryCount.uniqueResult()).intValue();
		pager.setTotal(listCount);
		
		Query query = getSession().createQuery("select c from Child c,LamaNivasa l,ProbationUnit p where c.lamaNivasa.id=l.id and l.probationUnit.id=p.id and p.id= :pid and c.status=0");
		
		query.setParameter("pid", referenceId);
		query.setFirstResult(start);
		query.setMaxResults(size);
		@SuppressWarnings("unchecked")
		List<Child> list = query.list();
	
		pager.setList(list);
		
		return pager;
	}
	
	public Pager findAllDeletedByProbationUnitId(String referenceId, Integer start, Integer size) {
		Pager pager = new Pager();
	
		start = (start == null) ? 0 : start;
		pager.setStart(start);
	
		size = (size == null) ? Pager.DEFAULT_PAGE_SIZE : size;
		pager.setSize(size);
		
		Query queryCount = getSession().createQuery("select count(c) from Child c,LamaNivasa l,ProbationUnit p where c.lamaNivasa.id=l.id and l.probationUnit.id=p.id and p.id= :pid and c.status=1");
		queryCount.setParameter("pid", referenceId);
		int listCount= ((Long)queryCount.uniqueResult()).intValue();
		pager.setTotal(listCount);
		
		Query query = getSession().createQuery("select c from Child c,LamaNivasa l,ProbationUnit p where c.lamaNivasa.id=l.id and l.probationUnit.id=p.id and p.id= :pid and c.status=1");
		
		query.setParameter("pid", referenceId);
		query.setFirstResult(start);
		query.setMaxResults(size);
		@SuppressWarnings("unchecked")
		List<Child> list = query.list();
	
		pager.setList(list);
		
		return pager;
	}

  public ChildrenSummary buildChildSummary(int age, String district) {
    ChildrenSummary cs = new ChildrenSummary();

    cs.setCount(getSexTypeCount());
    cs.setBuddhist(getTypeCount(Child.RELIGION, "BUDDHIST", age, district));
    cs.setRomanCatholic(getTypeCount(Child.RELIGION, "ROMAN CATHOLIC", age, district));
    cs.setChristianity(getTypeCount(Child.RELIGION, "CHRISTIANITY", age, district));
    cs.setIslam(getTypeCount(Child.RELIGION, "ISLAM", age, district));
    cs.setHinduism(getTypeCount(Child.RELIGION, "HINDUISM", age, district));
    cs.setReligionOther(getTypeCount(Child.RELIGION, "OTHER", age, district));

    cs.setSinhala(getTypeCount(Child.RACE, "SINHALA", age, district));
    cs.setSrilankanTamil(getTypeCount(Child.RACE, "SRILANKAN TAMIL", age, district));
    cs.setIndianTamil(getTypeCount(Child.RACE, "INDIAN TAMIL", age, district));
    cs.setMuslim(getTypeCount(Child.RACE, "MUSLIM", age, district));
    cs.setRaceOther(getTypeCount(Child.RACE, "OTHER", age, district));

    cs.setParentBoth(getTypeCount(Child.PARENT_AVAILABILITY, "BOTH", age, district));
    cs.setParentMotherOnly(getTypeCount(Child.PARENT_AVAILABILITY, "MOTHER ONLY", age, district));
    cs.setParentFatherOnly(getTypeCount(Child.PARENT_AVAILABILITY, "FATHER ONLY", age, district));
    cs.setParentNone(getTypeCount(Child.PARENT_AVAILABILITY, "NONE", age, district));

    cs.setIntakeCourt(getTypeCount(Child.INTAKE_METHOD, "COURT", age, district));
    cs.setIntakeDepartment(getTypeCount(Child.INTAKE_METHOD, "DEPARTMENT", age, district));
    cs.setIntakeDirect(getTypeCount(Child.INTAKE_METHOD, "DIRECT", age, district));
    cs.setIntakeParent(getTypeCount(Child.INTAKE_METHOD, "PARENT", age, district));

    return cs;
  }
}

