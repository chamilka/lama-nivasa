package pdn.sci.cs.dao;

import java.util.Calendar;
import java.util.GregorianCalendar;

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
		return super.find(criteria, start, size);

	}

	public Pager findAllByLamaNivasaId(String lamaNivasaId, Integer start, Integer size) {

		DetachedCriteria criteria = createCriteria(getPersistentClass());
		criteria.addOrder(Order.asc("id"));
		criteria.add(Restrictions.eq(Child.LAMA_NIVASA_ID, lamaNivasaId));
		return super.find(criteria, start, size);

	}

	public ChildrenSummary buildChildSummary() {
		ChildrenSummary cs = new ChildrenSummary();

		cs.setCount(getSexTypeCount());
		cs.setBuddhist(getTypeCount(Child.RELIGION, "BUDDHIST"));
		cs.setRomanCatholic(getTypeCount(Child.RELIGION, "ROMAN CATHOLIC"));
		cs.setChristianity(getTypeCount(Child.RELIGION, "CHRISTIANITY"));
		cs.setIslam(getTypeCount(Child.RELIGION, "ISLAM"));
		cs.setHinduism(getTypeCount(Child.RELIGION, "HINDUISM"));
		cs.setReligionOther(getTypeCount(Child.RELIGION, "OTHER"));

		cs.setSinhala(getTypeCount(Child.RACE, "SINHALA"));
		cs.setSrilankanTamil(getTypeCount(Child.RACE, "SRILANKAN TAMIL"));
		cs.setIndianTamil(getTypeCount(Child.RACE, "INDIAN TAMIL"));
		cs.setMuslim(getTypeCount(Child.RACE, "MUSLIM"));
		cs.setRaceOther(getTypeCount(Child.RACE, "OTHER"));

		cs.setParentBoth(getTypeCount(Child.PARENT_AVAILABILITY, "BOTH"));
		cs.setParentMotherOnly(getTypeCount(Child.PARENT_AVAILABILITY, "MOTHER ONLY"));
		cs.setParentFatherOnly(getTypeCount(Child.PARENT_AVAILABILITY, "FATHER ONLY"));
		cs.setParentNone(getTypeCount(Child.PARENT_AVAILABILITY, "NONE"));

		cs.setIntakeCourt(getTypeCount(Child.INTAKE_METHOD, "COURT"));
		cs.setIntakeDepartment(getTypeCount(Child.INTAKE_METHOD, "DEPARTMENT"));
		cs.setIntakeDirect(getTypeCount(Child.INTAKE_METHOD, "DIRECT"));
		cs.setIntakeParent(getTypeCount(Child.INTAKE_METHOD, "PARENT"));

		Calendar today = GregorianCalendar.getInstance();
		Calendar twoYear = (Calendar)today.clone();
		twoYear.add(Calendar.YEAR, -2);
		cs.setAgeLessThanTwo(getAgeRangeCount(Child.DATE_OF_BIRTH, twoYear, today));
		System.out.println(today + " (2, 0)\n " + twoYear);

		Calendar fiveYear = (Calendar)twoYear.clone();
		fiveYear.add(Calendar.YEAR, -3);
		cs.setAgeLessThanFive(getAgeRangeCount(Child.DATE_OF_BIRTH, fiveYear, twoYear));
		System.out.println(twoYear + " (2, 5)\n " + fiveYear);

		Calendar tenYear = (Calendar)fiveYear.clone();
		tenYear.add(Calendar.YEAR, -5);
		cs.setAgeLessThanTen(getAgeRangeCount(Child.DATE_OF_BIRTH, tenYear, fiveYear));
		System.out.println(fiveYear + " (5, 10)\n " + tenYear);

		Calendar eighteenYear = (Calendar)tenYear.clone();
		eighteenYear.add(Calendar.YEAR, -8);
		cs.setAgeLessThanEighteen(getAgeRangeCount(Child.DATE_OF_BIRTH, eighteenYear, tenYear));
		System.out.println(tenYear + " (10, 18)\n " + eighteenYear);

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

	private DetachedCriteria maleCriteriaByRestriction(String key, String value) {
		DetachedCriteria criteria;

		criteria = createCriteria(getPersistentClass());
		criteria.add(Restrictions.eq(Child.SEX_TYPE, Child.MALE));
		criteria.add(Restrictions.eq(key, value));
		return criteria;
	}

	private DetachedCriteria femaleCriteriaByRestriction(String key, String value) {
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


	private MaleFemale getTypeCount(String key, String value) {

		int male = getCount(maleCriteriaByRestriction(key, value));
		int female = getCount(femaleCriteriaByRestriction(key, value));

		return new MaleFemale(male, female);
	}

	private MaleFemale getAgeRangeCount(String key, Calendar startDate, Calendar endDate) {

		int male = getCount(maleCriteriaDateRangeByRestriction(key, startDate, endDate));
		int female = getCount(femaleCriteriaDateRangeByRestriction(key, startDate, endDate));

		return new MaleFemale(male, female);
	}

}
