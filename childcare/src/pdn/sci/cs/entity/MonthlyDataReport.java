package pdn.sci.cs.entity;


import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

import org.hibernate.annotations.GenericGenerator;

@Entity
@Table(name = "monthly_data")
@GenericGenerator(name = "uuid-strategy", strategy = "uuid.hex")
public class MonthlyDataReport implements java.io.Serializable {

  public static final String ID = "id";
  public static final String YEAR = "year";
  public static final String MONTH = "month";
  public static final String LAMA_NIVASA_ID = "lamaNivasa.id";

  private static final long serialVersionUID = 1L;

  private Integer numOfMaleChildren = 0;
  private Integer numOfFemaleChildren = 0;
  private Integer numOfOfficers = 0;
  private Integer numOfVacantOfficers = 0;
  private Integer numOfFemaleReunification = 0;
  private Integer numOfMaleReunification = 0;
  private Integer numOfFemaleTransfers = 0;
  private Integer numOfMaleTransfers = 0;
  private Integer numOfProformaFemale = 0;
  private Integer numOfProformaMale = 0;
  private Integer numOfFemaleNoGuardians = 0;
  private Integer numOfMaleNoGuardians = 0;
  private Integer numOfFemaleTerminates = 0;
  private Integer numOfMaleTerminates = 0;
  private Integer numOfFemaleHavingSpecialRequirements = 0;
  private Integer munOfMaleHavingSpecialRequirements = 0;
  private Integer numOfMeetingsUptoNow = 0;

  private Integer numOfIntakes = 0;
  private Integer intakeFromCourt = 0;
  private Integer intakeFromDepartment = 0;
  private Integer intakeFromParents = 0;
  private Integer intakeFromOrganizations = 0;
  private Integer intakeFromOther = 0;

  private Integer numToAdoption = 0;
  private Integer numToParent = 0;
  private Integer numToMarrage = 0;
  private Integer numToEmployement = 0;
  private Integer numToVocational = 0;
  private Integer numToSelfEmployement = 0;
  private Integer numToOther = 0;
  
  private Integer numNoChildPlans; 
  private Integer numDeviatedChildPlans;
  
  private String id;
  
  public MonthlyDataReport() {}

  public MonthlyDataReport(String id, String lamaNivasaId) {
    this.id = id;
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

  

  @Column(name = "NUM_OF_MALE_CHILDREN")
  public Integer getNumOfMaleChildren() {
    return this.numOfMaleChildren;
  }

  public void setNumOfMaleChildren(Integer numOfMaleChildren) {
    this.numOfMaleChildren = numOfMaleChildren;
  }

  @Column(name = "NUM_OF_FEMALE_CHILDREN")
  public Integer getNumOfFemaleChildren() {
    return numOfFemaleChildren;
  }

  public void setNumOfFemaleChildren(Integer numOfFemaleChildren) {
    this.numOfFemaleChildren = numOfFemaleChildren;
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

  @Column(name = "NUM_OF_FEMALE_NO_GUARDIANS")
  public Integer getNumOfFemaleNoGuardians() {
    return numOfFemaleNoGuardians;
  }

  public void setNumOfFemaleNoGuardians(Integer numOfFemaleNoGuardians) {
    this.numOfFemaleNoGuardians = numOfFemaleNoGuardians;
  }

  @Column(name = "NUM_OF_MALE_NO_GUARDIANS")
  public Integer getNumOfMaleNoGuardians() {
    return numOfMaleNoGuardians;
  }

  public void setNumOfMaleNoGuardians(Integer numOfMaleNoGuardians) {
    this.numOfMaleNoGuardians = numOfMaleNoGuardians;
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

  public void setNumOfFemaleHavingSpecialRequirements(Integer numOfFemaleHavingSpecialRequirements) {
    this.numOfFemaleHavingSpecialRequirements = numOfFemaleHavingSpecialRequirements;
  }

  @Column(name = "MUN_OF_MALE_HAVING_SPECIAL_REQUIREMENTS")
  public Integer getMunOfMaleHavingSpecialRequirements() {
    return this.munOfMaleHavingSpecialRequirements;
  }

  public void setMunOfMaleHavingSpecialRequirements(Integer munOfMaleHavingSpecialRequirements) {
    this.munOfMaleHavingSpecialRequirements = munOfMaleHavingSpecialRequirements;
  }

  @Column(name = "NUM_OF_MEETINGS_UPTO_NOW")
  public Integer getNumOfMeetingsUptoNow() {
    return this.numOfMeetingsUptoNow;
  }

  public void setNumOfMeetingsUptoNow(Integer numOfMeetingsUptoNow) {
    this.numOfMeetingsUptoNow = numOfMeetingsUptoNow;
  }

 
  @Column(name = "NUM_OF_INTAKES")
  public Integer getNumOfIntakes() {
    return numOfIntakes;
  }

  public void setNumOfIntakes(Integer numOfIntakes) {
    this.numOfIntakes = numOfIntakes;
  }

  @Column(name = "INTAKE_FROM_COURT")
  public Integer getIntakeFromCourt() {
    return intakeFromCourt;
  }

  public void setIntakeFromCourt(Integer intakeFromCourt) {
    this.intakeFromCourt = intakeFromCourt;
  }

  @Column(name = "INTAKE_FROM_DEPARTMENT")
  public Integer getIntakeFromDepartment() {
    return intakeFromDepartment;
  }

  public void setIntakeFromDepartment(Integer intakeFromDepartment) {
    this.intakeFromDepartment = intakeFromDepartment;
  }

  @Column(name = "INTAKE_FROM_PARENTS")
  public Integer getIntakeFromParents() {
    return intakeFromParents;
  }

  public void setIntakeFromParents(Integer intakeFromParents) {
    this.intakeFromParents = intakeFromParents;
  }

  @Column(name = "INTAKE_FROM_ORGANIZATIONS")
  public Integer getIntakeFromOrganizations() {
    return intakeFromOrganizations;
  }

  public void setIntakeFromOrganizations(Integer intakeFromOrganizations) {
    this.intakeFromOrganizations = intakeFromOrganizations;
  }
  
  @Column(name = "INTAKE_FROM_OTHER")
  public Integer getIntakeFromOther() {
    return intakeFromOther;
  }

  public void setIntakeFromOther(Integer intakeFromOther) {
    this.intakeFromOther = intakeFromOther;
  }

  @Column(name = "NUM_TO_ADOPTION")
  public Integer getNumToAdoption() {
    return numToAdoption;
  }

  public void setNumToAdoption(Integer numToAdoption) {
    this.numToAdoption = numToAdoption;
  }

  @Column(name = "NUM_TO_PARENT")
  public Integer getNumToParent() {
    return numToParent;
  }

  public void setNumToParent(Integer numToParent) {
    this.numToParent = numToParent;
  }

  @Column(name = "NUM_TO_MARRAGE")
  public Integer getNumToMarrage() {
    return numToMarrage;
  }

  public void setNumToMarrage(Integer numToMarrage) {
    this.numToMarrage = numToMarrage;
  }

  @Column(name = "NUM_TO_EMPLOYEMENT")
  public Integer getNumToEmployement() {
    return numToEmployement;
  }

  public void setNumToEmployement(Integer numToEmployement) {
    this.numToEmployement = numToEmployement;
  }

  @Column(name = "NUM_TO_VOCATIONAL")
  public Integer getNumToVocational() {
    return numToVocational;
  }

  public void setNumToVocational(Integer numToVocational) {
    this.numToVocational = numToVocational;
  }

  @Column(name = "NUM_TO_SELF_EMPLOYEMENT")
  public Integer getNumToSelfEmployement() {
    return numToSelfEmployement;
  }

  public void setNumToSelfEmployement(Integer numToSelfEmployement) {
    this.numToSelfEmployement = numToSelfEmployement;
  }

  @Column(name = "NUM_TO_OTHER")
  public Integer getNumToOther() {
    return numToOther;
  }

  public void setNumToOther(Integer numToOther) {
    this.numToOther = numToOther;
  }
  
  
  @Column(name = "NUM_NO_CHILD_PLANS")
  public Integer getNumNoChildPlans() {
    return numNoChildPlans;
  }

  public void setNumNoChildPlans(Integer numNoChildPlans) {
    this.numNoChildPlans = numNoChildPlans;
  }

  @Column(name = "NUM_DEVIATED_CHILD_PLANS")
  public Integer getNumDeviatedChildPlans() {
    return numDeviatedChildPlans;
  }

  public void setNumDeviatedChildPlans(Integer numDeviatedChildPlans) {
    this.numDeviatedChildPlans = numDeviatedChildPlans;
  }

  @Override
  public String toString() {
    return "MonthlyData [numOfMaleChildren=" + numOfMaleChildren + ", numOfFemaleChildren="
        + numOfFemaleChildren + ", numOfOfficers=" + numOfOfficers + ", numOfVacantOfficers="
        + numOfVacantOfficers + ", numOfFemaleReunification=" + numOfFemaleReunification
        + ", numOfMaleReunification=" + numOfMaleReunification + ", numOfFemaleTransfers="
        + numOfFemaleTransfers + ", numOfMaleTransfers=" + numOfMaleTransfers
        + ", numOfProformaFemale=" + numOfProformaFemale + ", numOfProformaMale="
        + numOfProformaMale + ", numOfFemaleNoGuardians=" + numOfFemaleNoGuardians
        + ", numOfMaleNoGuardians=" + numOfMaleNoGuardians + ", numOfFemaleTerminates="
        + numOfFemaleTerminates + ", numOfMaleTerminates=" + numOfMaleTerminates
        + ", numOfFemaleHavingSpecialRequirements=" + numOfFemaleHavingSpecialRequirements
        + ", munOfMaleHavingSpecialRequirements=" + munOfMaleHavingSpecialRequirements
        + ", numOfMeetingsUptoNow=" + numOfMeetingsUptoNow + ", probationOfficerVisitedDate="
        +", numOfIntakes="
        + numOfIntakes + ", intakeFromCourt=" + intakeFromCourt + ", intakeFromDepartment="
        + intakeFromDepartment + ", intakeFromParents=" + intakeFromParents
        + ", intakeFromOrganizations=" + intakeFromOrganizations + ", intakeFromOther="
        + intakeFromOther + ", numToAdoption=" + numToAdoption + ", numToParent=" + numToParent
        + ", numToMarrage=" + numToMarrage + ", numToEmployement=" + numToEmployement
        + ", numToVocational=" + numToVocational + ", numToSelfEmployement=" + numToSelfEmployement
        + ", numToOther=" + numToOther + "]";
  }

}
