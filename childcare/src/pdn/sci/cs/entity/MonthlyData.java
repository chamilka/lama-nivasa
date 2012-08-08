package pdn.sci.cs.entity;

import java.util.Calendar;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import org.hibernate.annotations.GenericGenerator;

@Entity
@Table(name = "monthly_data")
@GenericGenerator(name = "uuid-strategy", strategy = "uuid.hex")
public class MonthlyData extends BaseEntity implements java.io.Serializable {

	public static final String ID = "id";
	public static final String YEAR = "year";
	public static final String MONTH = "month";
	public static final String LAMA_NIVASA_ID = "lamaNivasa.id";
	
	private static final long serialVersionUID = 1L;
	private String id;
	private Integer year;
	private String month;
	private LamaNivasa lamaNivasa;
	private Integer numOfChildren;
	private Integer numOfOfficers;
	private Integer numOfVacantOfficers;
	private Integer numOfFemaleReunification;
	private Integer numOfMaleReunification;
	private Integer numOfFemaleTransfers;
	private Integer numOfMaleTransfers;
	private Integer numOfProformaFemale;
	private Integer numOfProformaMale;
	private Integer numOfGuardians;
	private Integer numOfFemaleTerminates;
	private Integer numOfMaleTerminates;
	private Integer numOfFemaleHavingSpecialRequirements;
	private Integer munOfMaleHavingSpecialRequirements;
	private Integer numOfMeetingsUptoNow;
	private Calendar probationOfficerVisitedDate;
	private Calendar counsellorVisitedDate;
	private Calendar departmentCommissionerVisitedDate;
	private Calendar departmentProbationOfficerVisitedDate;
	private Calendar departmentOfChildDevelopmentOfficerVisitedDate;
	private Calendar theLastMeetingHeldOn;
	private Calendar placementCommittee;

	public MonthlyData() {
	}

	public MonthlyData(String id,  String lamaNivasaId) {
		this.id = id;
	}

	public MonthlyData(String id, Integer year, String month,
			String lamaNivasaId, 
			Integer numOfChildren, Integer numOfOfficers,
			Integer numOfVacantOfficers, Integer numOfFemaleReunification,
			Integer numOfMaleReunification, Integer numOfFemaleTransfers,
			Integer numOfMaleTransfers, Integer numOfProformaFemale,
			Integer numOfProformaMale, Integer numOfGuardians,
			Integer numOfFemaleTerminates, Integer numOfMaleTerminates,
			Integer numOfFemaleHavingSpecialRequirements,
			Integer munOfMaleHavingSpecialRequirements,
			Integer numOfMeetingsUptoNow, Calendar probationOfficerVisitedDate,
			Calendar counsellorVisitedDate, Calendar departmentCommissionerVisitedDate,
			Calendar departmentProbationOfficerVisitedDate,
			Calendar departmentOfChildDevelopmentOfficerVisitedDate,
			Calendar theLastMeetingHeldOn, Calendar placementCommittee,
			Integer sortOrder, String insertUserId, String updateUserId,
			Calendar insertDatetime, Calendar updateDatetime) {
		this.id = id;
		this.year = year;
		this.month = month;
		this.numOfChildren = numOfChildren;
		this.numOfOfficers = numOfOfficers;
		this.numOfVacantOfficers = numOfVacantOfficers;
		this.numOfFemaleReunification = numOfFemaleReunification;
		this.numOfMaleReunification = numOfMaleReunification;
		this.numOfFemaleTransfers = numOfFemaleTransfers;
		this.numOfMaleTransfers = numOfMaleTransfers;
		this.numOfProformaFemale = numOfProformaFemale;
		this.numOfProformaMale = numOfProformaMale;
		this.numOfGuardians = numOfGuardians;
		this.numOfFemaleTerminates = numOfFemaleTerminates;
		this.numOfMaleTerminates = numOfMaleTerminates;
		this.numOfFemaleHavingSpecialRequirements = numOfFemaleHavingSpecialRequirements;
		this.munOfMaleHavingSpecialRequirements = munOfMaleHavingSpecialRequirements;
		this.numOfMeetingsUptoNow = numOfMeetingsUptoNow;
		this.probationOfficerVisitedDate = probationOfficerVisitedDate;
		this.counsellorVisitedDate = counsellorVisitedDate;
		this.departmentCommissionerVisitedDate = departmentCommissionerVisitedDate;
		this.departmentProbationOfficerVisitedDate = departmentProbationOfficerVisitedDate;
		this.departmentOfChildDevelopmentOfficerVisitedDate = departmentOfChildDevelopmentOfficerVisitedDate;
		this.theLastMeetingHeldOn = theLastMeetingHeldOn;
		this.placementCommittee = placementCommittee;
		this.sortOrder = sortOrder;
		this.insertUserId = insertUserId;
		this.updateUserId = updateUserId;
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

	@Column(name = "YEAR")
	public Integer getYear() {
		return this.year;
	}

	public void setYear(Integer year) {
		this.year = year;
	}

	@Column(name = "MONTH", length = 32)
	public String getMonth() {
		return this.month;
	}

	public void setMonth(String month) {
		this.month = month;
	}

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "LAMA_NIVASA_ID", nullable = false)
	public LamaNivasa getLamaNivasa() {
		return lamaNivasa;
	}

	public void setLamaNivasa(LamaNivasa lamaNivasa) {
		this.lamaNivasa = lamaNivasa;
	}

	@Column(name = "NUM_OF_CHILDREN")
	public Integer getNumOfChildren() {
		return this.numOfChildren;
	}

	public void setNumOfChildren(Integer numOfChildren) {
		this.numOfChildren = numOfChildren;
	}

	@Column(name = "NUM_OF_OFFICERS")
	public Integer getNumOfOfficers() {
		return this.numOfOfficers;
	}

	public void setNumOfOfficers(Integer numOfOfficers) {
		this.numOfOfficers = numOfOfficers;
	}

	@Column(name = "NUM_OF_VACANT_OFFICERS")
	public Integer getNumOfVacantOfficers() {
		return this.numOfVacantOfficers;
	}

	public void setNumOfVacantOfficers(Integer numOfVacantOfficers) {
		this.numOfVacantOfficers = numOfVacantOfficers;
	}

	@Column(name = "NUM_OF_FEMALE_REUNIFICATION")
	public Integer getNumOfFemaleReunification() {
		return this.numOfFemaleReunification;
	}

	public void setNumOfFemaleReunification(Integer numOfFemaleReunification) {
		this.numOfFemaleReunification = numOfFemaleReunification;
	}

	@Column(name = "NUM_OF_MALE_REUNIFICATION")
	public Integer getNumOfMaleReunification() {
		return this.numOfMaleReunification;
	}

	public void setNumOfMaleReunification(Integer numOfMaleReunification) {
		this.numOfMaleReunification = numOfMaleReunification;
	}

	@Column(name = "NUM_OF_FEMALE_TRANSFERS")
	public Integer getNumOfFemaleTransfers() {
		return this.numOfFemaleTransfers;
	}

	public void setNumOfFemaleTransfers(Integer numOfFemaleTransfers) {
		this.numOfFemaleTransfers = numOfFemaleTransfers;
	}

	@Column(name = "NUM_OF_MALE_TRANSFERS")
	public Integer getNumOfMaleTransfers() {
		return this.numOfMaleTransfers;
	}

	public void setNumOfMaleTransfers(Integer numOfMaleTransfers) {
		this.numOfMaleTransfers = numOfMaleTransfers;
	}

	@Column(name = "NUM_OF_PROFORMA_FEMALE")
	public Integer getNumOfProformaFemale() {
		return this.numOfProformaFemale;
	}

	public void setNumOfProformaFemale(Integer numOfProformaFemale) {
		this.numOfProformaFemale = numOfProformaFemale;
	}

	@Column(name = "NUM_OF_PROFORMA_MALE")
	public Integer getNumOfProformaMale() {
		return this.numOfProformaMale;
	}

	public void setNumOfProformaMale(Integer numOfProformaMale) {
		this.numOfProformaMale = numOfProformaMale;
	}

	@Column(name = "NUM_OF_GUARDIANS")
	public Integer getNumOfGuardians() {
		return this.numOfGuardians;
	}

	public void setNumOfGuardians(Integer numOfGuardians) {
		this.numOfGuardians = numOfGuardians;
	}

	@Column(name = "NUM_OF_FEMALE_TERMINATES")
	public Integer getNumOfFemaleTerminates() {
		return this.numOfFemaleTerminates;
	}

	public void setNumOfFemaleTerminates(Integer numOfFemaleTerminates) {
		this.numOfFemaleTerminates = numOfFemaleTerminates;
	}

	@Column(name = "NUM_OF_MALE_TERMINATES")
	public Integer getNumOfMaleTerminates() {
		return this.numOfMaleTerminates;
	}

	public void setNumOfMaleTerminates(Integer numOfMaleTerminates) {
		this.numOfMaleTerminates = numOfMaleTerminates;
	}

	@Column(name = "NUM_OF_FEMALE_HAVING_SPECIAL_REQUIREMENTS")
	public Integer getNumOfFemaleHavingSpecialRequirements() {
		return this.numOfFemaleHavingSpecialRequirements;
	}

	public void setNumOfFemaleHavingSpecialRequirements(
			Integer numOfFemaleHavingSpecialRequirements) {
		this.numOfFemaleHavingSpecialRequirements = numOfFemaleHavingSpecialRequirements;
	}

	@Column(name = "MUN_OF_MALE_HAVING_SPECIAL_REQUIREMENTS")
	public Integer getMunOfMaleHavingSpecialRequirements() {
		return this.munOfMaleHavingSpecialRequirements;
	}

	public void setMunOfMaleHavingSpecialRequirements(
			Integer munOfMaleHavingSpecialRequirements) {
		this.munOfMaleHavingSpecialRequirements = munOfMaleHavingSpecialRequirements;
	}

	@Column(name = "NUM_OF_MEETINGS_UPTO_NOW")
	public Integer getNumOfMeetingsUptoNow() {
		return this.numOfMeetingsUptoNow;
	}

	public void setNumOfMeetingsUptoNow(Integer numOfMeetingsUptoNow) {
		this.numOfMeetingsUptoNow = numOfMeetingsUptoNow;
	}

	@Column(name = "PROBATION_OFFICER_VISITED_DATE")
	public Calendar getProbationOfficerVisitedDate() {
		return this.probationOfficerVisitedDate;
	}

	public void setProbationOfficerVisitedDate(Calendar probationOfficerVisitedDate) {
		this.probationOfficerVisitedDate = probationOfficerVisitedDate;
	}

	@Column(name = "COUNSELLOR_VISITED_DATE")
	public Calendar getCounsellorVisitedDate() {
		return this.counsellorVisitedDate;
	}

	public void setCounsellorVisitedDate(Calendar counsellorVisitedDate) {
		this.counsellorVisitedDate = counsellorVisitedDate;
	}

	@Column(name = "DEPARTMENT_COMMISSIONER_VISITED_DATE")
	public Calendar getDepartmentCommissionerVisitedDate() {
		return this.departmentCommissionerVisitedDate;
	}

	public void setDepartmentCommissionerVisitedDate(
			Calendar departmentCommissionerVisitedDate) {
		this.departmentCommissionerVisitedDate = departmentCommissionerVisitedDate;
	}

	@Column(name = "DEPARTMENT_PROBATION_OFFICER_VISITED_DATE")
	public Calendar getDepartmentProbationOfficerVisitedDate() {
		return this.departmentProbationOfficerVisitedDate;
	}

	public void setDepartmentProbationOfficerVisitedDate(
			Calendar departmentProbationOfficerVisitedDate) {
		this.departmentProbationOfficerVisitedDate = departmentProbationOfficerVisitedDate;
	}

	@Column(name = "DEPARTMENT_OF_CHILD_DEVELOPMENT_OFFICER_VISITED_DATE")
	public Calendar getDepartmentOfChildDevelopmentOfficerVisitedDate() {
		return this.departmentOfChildDevelopmentOfficerVisitedDate;
	}

	public void setDepartmentOfChildDevelopmentOfficerVisitedDate(
			Calendar departmentOfChildDevelopmentOfficerVisitedDate) {
		this.departmentOfChildDevelopmentOfficerVisitedDate = departmentOfChildDevelopmentOfficerVisitedDate;
	}

	@Column(name = "THE_LAST_MEETING_HELD_ON")
	public Calendar getTheLastMeetingHeldOn() {
		return this.theLastMeetingHeldOn;
	}

	public void setTheLastMeetingHeldOn(Calendar theLastMeetingHeldOn) {
		this.theLastMeetingHeldOn = theLastMeetingHeldOn;
	}

	@Column(name = "PLACEMENT_COMMITTEE")
	public Calendar getPlacementCommittee() {
		return this.placementCommittee;
	}

	public void setPlacementCommittee(Calendar placementCommittee) {
		this.placementCommittee = placementCommittee;
	}

}
