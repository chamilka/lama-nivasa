package pdn.sci.cs.entity;

import java.util.Calendar;
import java.util.HashSet;
import java.util.Set;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.persistence.Transient;

import org.hibernate.annotations.GenericGenerator;

@Entity
@Table(name = "lama_nivasa")
@GenericGenerator(name = "uuid-strategy", strategy = "uuid.hex")
public class LamaNivasa extends BaseEntity implements java.io.Serializable {

	public static final String NAME = "name";
	public static final String DIVISIONAL_SECRETARIAT_ID = "divisionalSecretariat.id";
	public static final String PROBATION_UNIT_ID = "probationUnit.id";
	public static final String LAMA_NIVASA_ID = "id";
	public static final String STATUS = "status";
	private static final long serialVersionUID = 1L;
	private ProbationUnit probationUnit;
	private String probationOfficer;
	private DivisionalSecretariat divisionalSecretariat;
	private GramaSevakaDivision gramaSevakaDivision;
	private String name;

	private Calendar dateOfEstablishment;
	private String address;
	private String category;
	private String telephone;
	private String fax;
	private String email;
	private Integer minAge;
	private Integer maxAge;
	private Integer numberOfChildren;
	private String registrationStatus;
	private String registrationNumber;
	private Calendar registrationDate;
	private String fundingMethod;
	private String departmentFunding;
	private Integer numberOfOfficers;

	private String religion;
	private String comment;
	private int status;

	private Set<Child> childs = new HashSet<Child>(0);
	private Set<MonthlyData> monthlyData = new HashSet<MonthlyData>(0);

	public LamaNivasa() {
	}

	public LamaNivasa(String id, ProbationUnit probationUnit, DivisionalSecretariat divisionalSecretariat, String name,
			String category) {
		this.id = id;
		this.probationUnit = probationUnit;
		this.divisionalSecretariat = divisionalSecretariat;
		this.name = name;
		this.category = category;
	}

	public LamaNivasa(String id, ProbationUnit probationUnit, DivisionalSecretariat divisionalSecretariat, String name,
			String address, String category, String telephone, String fax, String email, Integer minAge, Integer maxAge,
			Integer numberOfChildren, String registrationStatus, String registrationNumber, Calendar registrationDate,
			String fundingMethod, String departmentFunding, Integer numberOfOfficers, Integer sortOrder,
			String insertUserId, String updateUserId, Calendar insertDatetime, Calendar updateDatetime,
			Set<Child> childs) {
		this.id = id;
		this.probationUnit = probationUnit;
		this.divisionalSecretariat = divisionalSecretariat;
		this.name = name;
		this.address = address;
		this.category = category;
		this.telephone = telephone;
		this.fax = fax;
		this.email = email;
		this.minAge = minAge;
		this.maxAge = maxAge;
		this.numberOfChildren = numberOfChildren;
		this.registrationStatus = registrationStatus;
		this.registrationNumber = registrationNumber;
		this.registrationDate = registrationDate;
		this.fundingMethod = fundingMethod;
		this.departmentFunding = departmentFunding;
		this.numberOfOfficers = numberOfOfficers;
		this.sortOrder = sortOrder;
		this.insertUserId = insertUserId;
		this.updateUserId = updateUserId;
		this.insertDateTime = insertDatetime;
		this.updateDateTime = updateDatetime;
		this.childs = childs;
	}

	@Id
	@Column(name = "ID", unique = true, nullable = false, length = 32)
	@GeneratedValue(generator = "uuid-strategy")
	public String getId() {
		return this.id;
	}

	public void setId(String id) {
		this.id = id;
	}

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "PROBATION_UNIT_ID", nullable = false)
	public ProbationUnit getProbationUnit() {
		return this.probationUnit;
	}

	public void setProbationUnit(ProbationUnit probationUnit) {
		this.probationUnit = probationUnit;
	}

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "DIVISIONAL_SECRETARIAT_ID", nullable = true)
	public DivisionalSecretariat getDivisionalSecretariat() {
		return this.divisionalSecretariat;
	}

	public void setDivisionalSecretariat(DivisionalSecretariat divisionalSecretariat) {
		this.divisionalSecretariat = divisionalSecretariat;
	}

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "GRAMA_SEVAKA_DIVISION_ID", nullable = true)
	public GramaSevakaDivision getGramaSevakaDivision() {
		return gramaSevakaDivision;
	}

	public void setGramaSevakaDivision(GramaSevakaDivision gramaSevakaDivision) {
		this.gramaSevakaDivision = gramaSevakaDivision;
	}

	@Column(name = "NAME", nullable = false)
	public String getName() {
		return this.name;
	}

	public void setName(String name) {
		this.name = name;
	}

	@Column(name = "ADDRESS")
	public String getAddress() {
		return this.address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	@Column(name = "CATEGORY", nullable = false, length = 32)
	public String getCategory() {
		return this.category;
	}

	public void setCategory(String category) {
		this.category = category;
	}

	@Column(name = "TELEPHONE", length = 16)
	public String getTelephone() {
		return this.telephone;
	}

	public void setTelephone(String telephone) {
		this.telephone = telephone;
	}

	@Column(name = "FAX", length = 32)
	public String getFax() {
		return this.fax;
	}

	public void setFax(String fax) {
		this.fax = fax;
	}

	@Column(name = "EMAIL", length = 64)
	public String getEmail() {
		return this.email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	@Column(name = "MIN_AGE")
	public Integer getMinAge() {
		return this.minAge;
	}

	public void setMinAge(Integer minAge) {
		this.minAge = minAge;
	}

	@Column(name = "MAX_AGE")
	public Integer getMaxAge() {
		return this.maxAge;
	}

	public void setMaxAge(Integer maxAge) {
		this.maxAge = maxAge;
	}

	@Column(name = "NUMBER_OF_CHILDREN")
	public Integer getNumberOfChildren() {
		return this.numberOfChildren;
	}

	public void setNumberOfChildren(Integer numberOfChildren) {
		this.numberOfChildren = numberOfChildren;
	}

	@Column(name = "REGISTRATION_STATUS", length = 16)
	public String getRegistrationStatus() {
		return this.registrationStatus;
	}

	public void setRegistrationStatus(String registrationStatus) {
		this.registrationStatus = registrationStatus;
	}

	@Column(name = "REGISTRATION_NUMBER", length = 32)
	public String getRegistrationNumber() {
		return this.registrationNumber;
	}

	public void setRegistrationNumber(String registrationNumber) {
		this.registrationNumber = registrationNumber;
	}

	@Temporal(TemporalType.TIMESTAMP)
	@Column(name = "REGISTRATION_DATE", length = 19)
	public Calendar getRegistrationDate() {
		return this.registrationDate;
	}

	public void setRegistrationDate(Calendar registrationDate) {
		this.registrationDate = registrationDate;
	}

	@Column(name = "FUNDING_METHOD", length = 64)
	public String getFundingMethod() {
		return this.fundingMethod;
	}

	public void setFundingMethod(String fundingMethod) {
		this.fundingMethod = fundingMethod;
	}

	@Column(name = "DEPARTMENT_FUNDING", length = 8)
	public String getDepartmentFunding() {
		return this.departmentFunding;
	}

	public void setDepartmentFunding(String departmentFunding) {
		this.departmentFunding = departmentFunding;
	}

	@Column(name = "NUMBER_OF_OFFICERS")
	public Integer getNumberOfOfficers() {
		return this.numberOfOfficers;
	}

	public void setNumberOfOfficers(Integer numberOfOfficers) {
		this.numberOfOfficers = numberOfOfficers;
	}

	@OneToMany(fetch = FetchType.LAZY, mappedBy = "lamaNivasa")
	public Set<Child> getChilds() {
		return this.childs;
	}

	public void setChilds(Set<Child> childs) {
		this.childs = childs;
	}

	@Transient
	public String getId_widget() {
		return id;
	}

	public void setId_widget(String id_widget) {
		this.id = id_widget;
	}

	@Column(name = "DATE_OF_ESTABLISHMENT")
	public Calendar getDateOfEstablishment() {
		return dateOfEstablishment;
	}

	public void setDateOfEstablishment(Calendar dateOfEstablishment) {
		this.dateOfEstablishment = dateOfEstablishment;
	}

	@OneToMany(fetch = FetchType.LAZY, mappedBy = "lamaNivasa")
	public Set<MonthlyData> getMonthlyData() {
		return monthlyData;
	}

	public void setMonthlyData(Set<MonthlyData> monthlyData) {
		this.monthlyData = monthlyData;
	}

	@Column(name = "PROBATION_OFFICER")
	public String getProbationOfficer() {
		return probationOfficer;
	}

	public void setProbationOfficer(String probationOfficer) {
		this.probationOfficer = probationOfficer;
	}

	@Column(name = "RELIGION")
	public String getReligion() {
		return religion;
	}

	public void setReligion(String religion) {
		this.religion = religion;
	}

	@Column(name = "COMMENT")
	public String getComment() {
		return comment;
	}

	public void setComment(String comment) {
		this.comment = comment;
	}

	@Column(name = "STATUS")
	public int getStatus() {
		return status;
	}

	public void setStatus(int status) {
		this.status = status;
	}

}
