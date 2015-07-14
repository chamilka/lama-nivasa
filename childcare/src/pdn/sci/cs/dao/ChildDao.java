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
import pdn.sci.cs.entity.District;
import pdn.sci.cs.entity.LamaNivasa;
import pdn.sci.cs.entity.ProbationUnit;
import pdn.sci.cs.entity.Province;
import pdn.sci.cs.util.ChildrenSummary;
import pdn.sci.cs.util.MaleFemale;
import pdn.sci.cs.util.Pager;

@Repository
public class ChildDao extends GenericDao<Child> {

  private static final Class<Child> clazz = Child.class;

  public Pager search(String name, String code, String lamaNivasaId, Integer start, Integer size) {
    DetachedCriteria criteria = createCriteria(clazz);

    if (lamaNivasaId != null && !lamaNivasaId.isEmpty()) {
      criteria.add(Restrictions.eq(Child.LAMA_NIVASA_ID, lamaNivasaId));
    }

    if (name != null && !name.isEmpty()) {
      criteria.add(Restrictions.like(Child.FULL_NAME, "%" + name + "%"));
    }

    if (code != null && !code.isEmpty()) {
      criteria.add(Restrictions.eq(Child.CODE, code));
    }

    return super.find(criteria, start, size);
    // return findByCriteria(criteria);

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
    try {
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
      Calendar twoYear = (Calendar) today.clone();
      twoYear.add(Calendar.YEAR, -2);
      cs.setAgeLessThanTwo(getAgeRangeCount(Child.DATE_OF_BIRTH, twoYear, today));

      Calendar fiveYear = (Calendar) twoYear.clone();
      fiveYear.add(Calendar.YEAR, -3);
      cs.setAgeLessThanFive(getAgeRangeCount(Child.DATE_OF_BIRTH, fiveYear, twoYear));

      Calendar tenYear = (Calendar) fiveYear.clone();
      tenYear.add(Calendar.YEAR, -5);
      cs.setAgeLessThanTen(getAgeRangeCount(Child.DATE_OF_BIRTH, tenYear, fiveYear));

      Calendar eighteenYear = (Calendar) tenYear.clone();
      eighteenYear.add(Calendar.YEAR, -8);
      cs.setAgeLessThanEighteen(getAgeRangeCount(Child.DATE_OF_BIRTH, eighteenYear, tenYear));
    } catch (Exception ex) {
      ex.printStackTrace();
    }
    return cs;
  }

  private DetachedCriteria maleCriteria() {
    DetachedCriteria criteria;

    criteria = createCriteria(getPersistentClass());
    criteria.add(Restrictions.eq(Child.SEX_TYPE, Child.MALE));

    return criteria;
  }

  private DetachedCriteria maleProvinceDistrictCriteria(int age, String district, String province) {
    DetachedCriteria criteria;

    criteria = createCriteria(getPersistentClass());
    criteria.createAlias("lamaNivasa", "l");
    criteria.createAlias("l.probationUnit", "p");
    criteria.createAlias("p.district", "d");
    criteria.createAlias("d.province", "pr");

    criteria.add(Restrictions.eq(Child.SEX_TYPE, Child.MALE));
    if (!district.equals("-1") && district != null) {
      criteria.add(Restrictions.eq("d.id", district));
    }
    if (!province.equals("-1") && district != null) {
      criteria.add(Restrictions.eq("pr.id", province));
    }

    return criteria;
  }

  private DetachedCriteria femaleProvinceDistrictCriteria(int age, String district, String province) {
    DetachedCriteria criteria;

    criteria = createCriteria(getPersistentClass());
    criteria.createAlias("lamaNivasa", "l");
    criteria.createAlias("l.probationUnit", "p");
    criteria.createAlias("p.district", "d");
    criteria.createAlias("d.province", "pr");

    criteria.add(Restrictions.eq(Child.SEX_TYPE, Child.FEMALE));
    if (!district.equals("-1") && district != null) {
      criteria.add(Restrictions.eq("d.id", district));
    }
    if (!province.equals("-1") && district != null) {
      criteria.add(Restrictions.eq("pr.id", province));
    }

    return criteria;
  }

  private int maleProvinceDistrictCount(int age, String district, String province) {
    String query =
        "select count(c) from Child c,LamaNivasa l,ProbationUnit p, Province pr, District d "
            + "where c.lamaNivasa.id=l.id and " + "l.probationUnit.id=p.id and "
            + "p.district.id=d.id and " + "d.province.id=pr.id and " + "c.sexType='MALE'";
    if (!district.equals("-1") && district != null) {
      query += " and d.id=:did";
    }
    if (!province.equals("-1") && district != null) {
      query += " and pr.id=:prid";
    }

    Query queryCount = getSession().createQuery(query);

    if (!district.equals("-1") && district != null) {
      queryCount.setParameter("did", district);
    }
    if (!province.equals("-1") && district != null) {
      queryCount.setParameter("prid", province);
    }

    int listCount = ((Long) queryCount.uniqueResult()).intValue();
    return listCount;
  }



  private DetachedCriteria femaleCriteria() {
    DetachedCriteria criteria;

    criteria = createCriteria(getPersistentClass());
    criteria.add(Restrictions.eq(Child.SEX_TYPE, Child.FEMALE));

    return criteria;
  }

  private DetachedCriteria maleCriteriaByRestriction(String key, String value, int age,
      String district, String province) {

    DetachedCriteria criteria;

    criteria = createCriteria(getPersistentClass());
    criteria.createAlias("lamaNivasa", "l");
    criteria.createAlias("l.probationUnit", "p");
    criteria.createAlias("p.district", "d");
    criteria.createAlias("d.province", "pr");

    criteria.add(Restrictions.eq(Child.SEX_TYPE, Child.MALE));

    if (key != null) {
      criteria.add(Restrictions.eq(key, value));
    }

    if (age > 0) {
      Calendar today = GregorianCalendar.getInstance();
      Calendar before = (Calendar) today.clone();
      before.add(Calendar.YEAR, -age);
      criteria.add(Restrictions.between(Child.DATE_OF_BIRTH, before, today));
    }

    if (district != null && !district.equals("-1")) {
      criteria.add(Restrictions.eq("d.id", district));
    }
    if (province != null && !province.equals("-1")) {
      criteria.add(Restrictions.eq("pr.id", province));
    }

    return criteria;

  }

  private DetachedCriteria femaleCriteriaByRestriction(String key, String value, int age,
      String district, String province) {
    DetachedCriteria criteria;

    criteria = createCriteria(getPersistentClass());
    criteria.createAlias("lamaNivasa", "l");
    criteria.createAlias("l.probationUnit", "p");
    criteria.createAlias("p.district", "d");
    criteria.createAlias("d.province", "pr");

    criteria.add(Restrictions.eq(Child.SEX_TYPE, Child.FEMALE));

    if (key != null) {
      criteria.add(Restrictions.eq(key, value));
    }

    if (age > 0) {
      Calendar today = GregorianCalendar.getInstance();
      Calendar before = (Calendar) today.clone();
      before.add(Calendar.YEAR, -age);
      criteria.add(Restrictions.between(Child.DATE_OF_BIRTH, before, today));
    }

    if (district != null && !district.equals("-1")) {
      criteria.add(Restrictions.eq("d.id", district));
    }
    if (district != null && !province.equals("-1")) {
      criteria.add(Restrictions.eq("pr.id", province));
    }

    return criteria;
  }

  private DetachedCriteria femaleCriteriaDateRangeByRestriction(String key, Calendar startDate,
      Calendar endDate) {
    DetachedCriteria criteria;

    criteria = createCriteria(getPersistentClass());
    criteria.add(Restrictions.eq(Child.SEX_TYPE, Child.FEMALE));
    criteria.add(Restrictions.between(key, startDate, endDate));

    return criteria;
  }

  private DetachedCriteria maleCriteriaDateRangeByRestriction(String key, Calendar startDate,
      Calendar endDate) {
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

  private MaleFemale getSexTypeCount(int age, String district, String province) {

    int male = getCount(maleProvinceDistrictCriteria(age, district, province));
    int female = getCount(femaleProvinceDistrictCriteria(age, district, province));
    return new MaleFemale(male, female);
  }


  private MaleFemale getTypeCount(String key, String value, int age, String district) {

    int male = getCount(maleCriteriaByRestriction(key, value, age, district, null));
    int female = getCount(femaleCriteriaByRestriction(key, value, age, district, null));

    return new MaleFemale(male, female);
  }

  private MaleFemale getTypeCount(String key, String value, int age, String district,String province) {
    int male = getCount(maleCriteriaByRestriction(key, value, age, district, province));
    int female = getCount(femaleCriteriaByRestriction(key, value, age, district, province));

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

    Query queryCount =
        getSession()
            .createQuery(
                "select count(c) from Child c,LamaNivasa l,ProbationUnit p where c.lamaNivasa.id=l.id and l.probationUnit.id=p.id and p.id= :pid and c.status=0");
    queryCount.setParameter("pid", referenceId);
    int listCount = ((Long) queryCount.uniqueResult()).intValue();
    pager.setTotal(listCount);

    Query query =
        getSession()
            .createQuery(
                "select c from Child c,LamaNivasa l,ProbationUnit p where c.lamaNivasa.id=l.id and l.probationUnit.id=p.id and p.id= :pid and c.status=0");

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

    Query queryCount =
        getSession()
            .createQuery(
                "select count(c) from Child c,LamaNivasa l,ProbationUnit p where c.lamaNivasa.id=l.id and l.probationUnit.id=p.id and p.id= :pid and c.status=1");
    queryCount.setParameter("pid", referenceId);
    int listCount = ((Long) queryCount.uniqueResult()).intValue();
    pager.setTotal(listCount);

    Query query =
        getSession()
            .createQuery(
                "select c from Child c,LamaNivasa l,ProbationUnit p where c.lamaNivasa.id=l.id and l.probationUnit.id=p.id and p.id= :pid and c.status=1");

    query.setParameter("pid", referenceId);
    query.setFirstResult(start);
    query.setMaxResults(size);
    @SuppressWarnings("unchecked")
    List<Child> list = query.list();

    pager.setList(list);

    return pager;
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
	                "select count(c) from Child c,LamaNivasa l,ProbationUnit p where c.lamaNivasa.id=l.id and l.probationUnit.id=p.id and p.id= :pid and c.status=-1");
	    queryCount.setParameter("pid", referenceId);
	    int listCount = ((Long) queryCount.uniqueResult()).intValue();
	    pager.setTotal(listCount);

	    Query query =
	        getSession()
	            .createQuery(
	                "select c from Child c,LamaNivasa l,ProbationUnit p where c.lamaNivasa.id=l.id and l.probationUnit.id=p.id and p.id= :pid and c.status=-1");

	    query.setParameter("pid", referenceId);
	    query.setFirstResult(start);
	    query.setMaxResults(size);
	    @SuppressWarnings("unchecked")
	    List<Child> list = query.list();

	    pager.setList(list);

	    return pager;
	  }

  public ChildrenSummary buildChildSummary(int age, String district, String province) {
    ChildrenSummary cs = new ChildrenSummary();
    try {
      cs.setCount(getSexTypeCount(age, district, province));
      cs.setBuddhist(getTypeCount(Child.RELIGION, "BUDDHIST", age, district, province));
      cs.setRomanCatholic(getTypeCount(Child.RELIGION, "ROMAN CATHOLIC", age, district, province));
      cs.setChristianity(getTypeCount(Child.RELIGION, "CHRISTIANITY", age, district, province));
      cs.setIslam(getTypeCount(Child.RELIGION, "ISLAM", age, district, province));
      cs.setHinduism(getTypeCount(Child.RELIGION, "HINDUISM", age, district, province));
      cs.setReligionOther(getTypeCount(Child.RELIGION, "OTHER", age, district, province));

      cs.setSinhala(getTypeCount(Child.RACE, "SINHALA", age, district, province));
      cs.setSrilankanTamil(getTypeCount(Child.RACE, "SRILANKAN TAMIL", age, district, province));
      cs.setIndianTamil(getTypeCount(Child.RACE, "INDIAN TAMIL", age, district, province));
      cs.setMuslim(getTypeCount(Child.RACE, "MUSLIM", age, district, province));
      cs.setRaceOther(getTypeCount(Child.RACE, "OTHER", age, district, province));

      cs.setParentBoth(getTypeCount(Child.PARENT_AVAILABILITY, "BOTH", age, district, province));
      cs.setParentMotherOnly(getTypeCount(Child.PARENT_AVAILABILITY, "MOTHER ONLY", age, district,
          province));
      cs.setParentFatherOnly(getTypeCount(Child.PARENT_AVAILABILITY, "FATHER ONLY", age, district,
          province));
      cs.setParentNone(getTypeCount(Child.PARENT_AVAILABILITY, "NONE", age, district, province));

      cs.setIntakeCourt(getTypeCount(Child.INTAKE_METHOD, "COURT", age, district, province));
      cs.setIntakeDepartment(getTypeCount(Child.INTAKE_METHOD, "DEPARTMENT", age, district,
          province));
      cs.setIntakeDirect(getTypeCount(Child.INTAKE_METHOD, "DIRECT", age, district, province));
      cs.setIntakeParent(getTypeCount(Child.INTAKE_METHOD, "PARENT", age, district, province));

      if (age == -1) {
        Calendar today = GregorianCalendar.getInstance();
        Calendar twoYear = (Calendar) today.clone();
        twoYear.add(Calendar.YEAR, -2);
        cs.setAgeLessThanTwo(getAgeRangeCountDistrictProvince(Child.DATE_OF_BIRTH, twoYear, today,
            district, province));

        Calendar fiveYear = (Calendar) twoYear.clone();
        fiveYear.add(Calendar.YEAR, -3);
        cs.setAgeLessThanFive(getAgeRangeCountDistrictProvince(Child.DATE_OF_BIRTH, fiveYear,
            twoYear, district, province));

        Calendar tenYear = (Calendar) fiveYear.clone();
        tenYear.add(Calendar.YEAR, -5);
        cs.setAgeLessThanTen(getAgeRangeCountDistrictProvince(Child.DATE_OF_BIRTH, tenYear,
            fiveYear, district, province));

        Calendar eighteenYear = (Calendar) tenYear.clone();
        eighteenYear.add(Calendar.YEAR, -8);
        cs.setAgeLessThanEighteen(getAgeRangeCountDistrictProvince(Child.DATE_OF_BIRTH,
            eighteenYear, tenYear, district, province));
      }
    } catch (Exception ex) {
      ex.printStackTrace();
    }
    return cs;
  }

  private MaleFemale getAgeRangeCountDistrictProvince(String key, Calendar startDate,
      Calendar endDate, String district, String province) {
    int male =
        getCount(maleCriteriaDateRangeByRestrictionDistrictProvince(key, startDate, endDate,
            district, province));
    int female =
        getCount(femaleCriteriaDateRangeByRestrictionDistrictProvince(key, startDate, endDate,
            district, province));

    return new MaleFemale(male, female);
  }

  private DetachedCriteria maleCriteriaDateRangeByRestrictionDistrictProvince(String key,
      Calendar startDate, Calendar endDate, String district, String province) {
    DetachedCriteria criteria;

    criteria = createCriteria(getPersistentClass());
    criteria.createAlias("lamaNivasa", "l");
    criteria.createAlias("l.probationUnit", "p");
    criteria.createAlias("p.district", "d");
    criteria.createAlias("d.province", "pr");

    criteria.add(Restrictions.eq(Child.SEX_TYPE, Child.MALE));
    criteria.add(Restrictions.between(key, startDate, endDate));

    if (district != null && !district.equals("-1")) {
      criteria.add(Restrictions.eq("d.id", district));
    }
    if (province != null && !province.equals("-1")) {
      criteria.add(Restrictions.eq("pr.id", province));
    }

    return criteria;
  }

  private DetachedCriteria femaleCriteriaDateRangeByRestrictionDistrictProvince(String key,
      Calendar startDate, Calendar endDate, String district, String province) {
    DetachedCriteria criteria;

    criteria = createCriteria(getPersistentClass());
    criteria.createAlias("lamaNivasa", "l");
    criteria.createAlias("l.probationUnit", "p");
    criteria.createAlias("p.district", "d");
    criteria.createAlias("d.province", "pr");

    criteria.add(Restrictions.eq(Child.SEX_TYPE, Child.FEMALE));
    criteria.add(Restrictions.between(key, startDate, endDate));

    if (district != null && !district.equals("-1")) {
      criteria.add(Restrictions.eq("d.id", district));
    }
    if (province != null && !province.equals("-1")) {
      criteria.add(Restrictions.eq("pr.id", province));
    }

    return criteria;
  }

  public Pager findAllByProvinceId(String referenceId, Integer start, Integer size) {
    Pager pager = new Pager();

    start = (start == null) ? 0 : start;
    pager.setStart(start);

    size = (size == null) ? Pager.DEFAULT_PAGE_SIZE : size;
    pager.setSize(size);
    
    Query queryCount = getSession().createQuery("select count(c) from Child c,LamaNivasa l,ProbationUnit p, District d, Province pr where c.lamaNivasa.id=l.id and l.probationUnit.id=p.id and p.district=d.id and d.province = pr.id and pr.id= :pid and c.status=0");
    queryCount.setParameter("pid", referenceId);
    int listCount= ((Long)queryCount.uniqueResult()).intValue();
    pager.setTotal(listCount);
    
    Query query = getSession().createQuery("  select c from Child c,LamaNivasa l,ProbationUnit p, District d, Province pr where c.lamaNivasa.id=l.id and l.probationUnit.id=p.id and p.district=d.id and d.province = pr.id and pr.id= :pid and c.status=0");
  
    query.setParameter("pid", referenceId);
    query.setFirstResult(start);
    query.setMaxResults(size);
    @SuppressWarnings("unchecked")
    List<Child> list = query.list();

    pager.setList(list);
    
    return pager;
  }

	public Pager searchByProvince(String name, String code, String lamaNivasaId, String referenceId, Integer pageStart, Integer pageSize) {
		
		StringBuilder stringQueryCount = new StringBuilder("select count(c) from Child c,LamaNivasa l,ProbationUnit p, District d, Province pr where c.lamaNivasa.id=l.id and l.probationUnit.id=p.id and p.district=d.id and d.province = pr.id and pr.id= :pid and c.status=0 ");
		StringBuilder stringQuery = new StringBuilder("select c from Child c,LamaNivasa l,ProbationUnit p, District d, Province pr where c.lamaNivasa.id=l.id and l.probationUnit.id=p.id and p.district=d.id and d.province = pr.id and pr.id= :pid and c.status=0 ");
		boolean lid = false, cname = false, ccode = false;
		
		Pager pager = new Pager();
	
		pageStart = (pageStart == null) ? 0 : pageStart;
	    pager.setStart(pageStart);
	
	    pageSize = (pageSize == null) ? Pager.DEFAULT_PAGE_SIZE : pageSize;
	    pager.setSize(pageSize);
		
			if (lamaNivasaId != null && !lamaNivasaId.isEmpty()) {
				stringQueryCount.append("and l.id= :lid ");
				stringQuery.append("and l.id= :lid ");
				lid = true;
		    }
	
		    if (name != null && !name.isEmpty()) {
		    	stringQueryCount.append("and c.fullName LIKE :cname");
		    	stringQuery.append("and c.fullName LIKE :cname");
		    	cname = true;
		    }
	
		    if (code != null && !code.isEmpty()) {
		    	stringQueryCount.append("and c.code= :ccode");
		    	stringQuery.append("and c.code= :ccode");
		    	ccode = true;
		    }
		    
		    Query queryCount = getSession().createQuery(stringQueryCount.toString());
		    Query query = getSession().createQuery(stringQuery.toString());
		    
		    queryCount.setParameter("pid", referenceId);
		    query.setParameter("pid", referenceId);
		    
		    if(lid){
		    	queryCount.setParameter("lid", lamaNivasaId);
		    	query.setParameter("lid", lamaNivasaId);
		    }
		    if(ccode){
		    	queryCount.setParameter("ccode", code);
		    	query.setParameter("ccode", code);
		    }
		    if(cname){
		    	queryCount.setParameter("cname", "%" + name + "%");
		    	query.setParameter("cname", "%" + name + "%");
		    }
		    
		    int listCount= ((Long)queryCount.uniqueResult()).intValue();
		    pager.setTotal(listCount);
		    
		    query.setFirstResult(pageStart);
		    query.setMaxResults(pageSize);
		    @SuppressWarnings("unchecked")
		    List<Child> list = query.list();
	
		    pager.setList(list);
		    
		    return pager;
	}

	public Pager searchByProbationUnit(String name, String code, String lamaNivasaId, String referenceId, Integer pageStart, Integer pageSize) {
		StringBuilder stringQueryCount = new StringBuilder("select count(c) from Child c,LamaNivasa l,ProbationUnit p where c.lamaNivasa.id=l.id and l.probationUnit.id=p.id and p.id= :pid and c.status=0 ");
		StringBuilder stringQuery = new StringBuilder("select c from Child c,LamaNivasa l,ProbationUnit p where c.lamaNivasa.id=l.id and l.probationUnit.id=p.id and p.id= :pid and c.status=0 ");
		boolean lid = false, cname = false, ccode = false;
		
		Pager pager = new Pager();
	
		pageStart = (pageStart == null) ? 0 : pageStart;
	    pager.setStart(pageStart);
	
	    pageSize = (pageSize == null) ? Pager.DEFAULT_PAGE_SIZE : pageSize;
	    pager.setSize(pageSize);
		
			if (lamaNivasaId != null && !lamaNivasaId.isEmpty()) {
				stringQueryCount.append("and l.id= :lid ");
				stringQuery.append("and l.id= :lid ");
				lid = true;
		    }
	
		    if (name != null && !name.isEmpty()) {
		    	stringQueryCount.append("and c.fullName LIKE :cname");
		    	stringQuery.append("and c.fullName LIKE :cname");
		    	cname = true;
		    }
	
		    if (code != null && !code.isEmpty()) {
		    	stringQueryCount.append("and c.code= :ccode");
		    	stringQuery.append("and c.code= :ccode");
		    	ccode = true;
		    }
		    
		    Query queryCount = getSession().createQuery(stringQueryCount.toString());
		    Query query = getSession().createQuery(stringQuery.toString());
		    
		    queryCount.setParameter("pid", referenceId);
		    query.setParameter("pid", referenceId);
		    
		    if(lid){
		    	queryCount.setParameter("lid", lamaNivasaId);
		    	query.setParameter("lid", lamaNivasaId);
		    }
		    if(ccode){
		    	queryCount.setParameter("ccode", code);
		    	query.setParameter("ccode", code);
		    }
		    if(cname){
		    	queryCount.setParameter("cname", "%" + name + "%");
		    	query.setParameter("cname", "%" + name + "%");
		    }
		    
		    int listCount= ((Long)queryCount.uniqueResult()).intValue();
		    pager.setTotal(listCount);
		    
		    query.setFirstResult(pageStart);
		    query.setMaxResults(pageSize);
		    @SuppressWarnings("unchecked")
		    List<Child> list = query.list();
	
		    pager.setList(list);
		    
		    return pager;
	}

	public Pager searchByLamanivasa(String name, String referenceId, Integer pageStart, Integer pageSize) {
		StringBuilder stringQueryCount = new StringBuilder("select count(c) from Child c,LamaNivasa l where c.lamaNivasa.id=l.id and l.id= :lid and c.status=0 ");
		StringBuilder stringQuery = new StringBuilder("select c from Child c,LamaNivasa l where c.lamaNivasa.id=l.id and l.id= :lid and c.status=0 ");
		boolean cname = false;
		
		Pager pager = new Pager();
	
		pageStart = (pageStart == null) ? 0 : pageStart;
	    pager.setStart(pageStart);
	
	    pageSize = (pageSize == null) ? Pager.DEFAULT_PAGE_SIZE : pageSize;
	    pager.setSize(pageSize);
		
		    if (name != null && !name.isEmpty()) {
		    	stringQueryCount.append("and c.fullName LIKE :cname");
		    	stringQuery.append("and c.fullName LIKE :cname");
		    	cname = true;
		    }
	
		    Query queryCount = getSession().createQuery(stringQueryCount.toString());
		    Query query = getSession().createQuery(stringQuery.toString());
		    
		    queryCount.setParameter("lid", referenceId);
		    query.setParameter("lid", referenceId);
		    
		    if(cname){
		    	queryCount.setParameter("cname", "%" + name + "%");
		    	query.setParameter("cname", "%" + name + "%");
		    }
		    
		    int listCount= ((Long)queryCount.uniqueResult()).intValue();
		    pager.setTotal(listCount);
		    
		    query.setFirstResult(pageStart);
		    query.setMaxResults(pageSize);
		    @SuppressWarnings("unchecked")
		    List<Child> list = query.list();
	
		    pager.setList(list);
		    
		    return pager;
	}


}
