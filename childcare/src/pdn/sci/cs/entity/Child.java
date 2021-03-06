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

import org.hibernate.annotations.GenericGenerator;

@Entity
@Table(name = "child")
@GenericGenerator(name = "uuid-strategy", strategy = "uuid.hex")
public class Child extends BaseEntity implements java.io.Serializable {

  public static final String FULL_NAME = "fullName";
  public static final String LAMA_NIVASA_ID = "lamaNivasa.id";
  public static final String RELIGION = "religion";
  public static final String SEX_TYPE = "sexType";
  public static final String PARENT_AVAILABILITY = "parentsAvailability";
  public static final String RACE = "race";
  public static final String INTAKE_METHOD = "intakeMethod";
  public static final String DATE_OF_BIRTH = "dateOfBirth";
  public static final String CODE = "code";
  public static final String STATUS = "status";

  public static final String MALE = "MALE";
  public static final String FEMALE = "FEMALE";

  private static final long serialVersionUID = 1L;

  private LamaNivasa lamaNivasa;
  private String code;
  private String fullName;
  private Calendar dateOfBirth;
  private Calendar dateOfRegistration;
  private String category;
  private String birthCertificate;
  private String proforma;
  private String vaccinationCard;
  private String parentsAvailability;
  private String history;
  private String sexType;
  private String race;
  private String religion;
  private String disable;
  private String typeOfDisability;
  private String school;
  private String grade;
  private String intakeMethod;
  private String originalProbationUnit;
  private String comment;
  private int status;
  private Set<ChildGuardian> childGuardians = new HashSet<ChildGuardian>(0);

  public Child() {}

  public Child(String id, LamaNivasa lamaNivasa, String fullName, String sexType) {
    this.id = id;
    this.lamaNivasa = lamaNivasa;
    this.fullName = fullName;
    this.sexType = sexType;
  }

  public Child(String id, LamaNivasa lamaNivasa, String code, String fullName,
      Calendar dateOfBirth, String sexType, String race, String religion, String disable,
      String typeOfDisability, String school, String grade, String intakeMethod, Integer sortOrder,
      String insertUserId, String updateUserId, Calendar insertDatetime, Calendar updateDatetime,
      Set<ChildGuardian> childGuardians) {
    this.id = id;
    this.lamaNivasa = lamaNivasa;
    this.code = code;
    this.fullName = fullName;
    this.dateOfBirth = dateOfBirth;
    this.sexType = sexType;
    this.race = race;
    this.religion = religion;
    this.disable = disable;
    this.typeOfDisability = typeOfDisability;
    this.school = school;
    this.grade = grade;
    this.intakeMethod = intakeMethod;
    this.sortOrder = sortOrder;
    this.insertUserId = insertUserId;
    this.updateUserId = updateUserId;
    this.insertDateTime = insertDatetime;
    this.updateDateTime = updateDatetime;
    this.childGuardians = childGuardians;
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
  @JoinColumn(name = "LAMA_NIVASA_ID", nullable = false)
  public LamaNivasa getLamaNivasa() {
    return this.lamaNivasa;
  }

  public void setLamaNivasa(LamaNivasa lamaNivasa) {
    this.lamaNivasa = lamaNivasa;
  }

  @Column(name = "CODE", length = 32)
  public String getCode() {
    return this.code;
  }

  public void setCode(String code) {
    this.code = code;
  }

  @Column(name = "FULL_NAME", nullable = false)
  public String getFullName() {
    return this.fullName;
  }

  public void setFullName(String fullName) {
    this.fullName = fullName;
  }

  @Temporal(TemporalType.TIMESTAMP)
  @Column(name = "DATE_OF_BIRTH", length = 19)
  public Calendar getDateOfBirth() {
    return this.dateOfBirth;
  }

  public void setDateOfBirth(Calendar dateOfBirth) {
    this.dateOfBirth = dateOfBirth;
  }

  @Column(name = "SEX_TYPE", nullable = false, length = 32)
  public String getSexType() {
    return this.sexType;
  }

  public void setSexType(String sexType) {
    this.sexType = sexType;
  }

  @Column(name = "RACE", length = 32)
  public String getRace() {
    return this.race;
  }

  public void setRace(String race) {
    this.race = race;
  }

  @Column(name = "RELIGION", length = 32)
  public String getReligion() {
    return this.religion;
  }

  public void setReligion(String religion) {
    this.religion = religion;
  }

  @Column(name = "DISABLE", length = 8)
  public String getDisable() {
    return this.disable;
  }

  public void setDisable(String disable) {
    this.disable = disable;
  }

  @Column(name = "TYPE_OF_DISABILITY", length = 128)
  public String getTypeOfDisability() {
    return this.typeOfDisability;
  }

  public void setTypeOfDisability(String typeOfDisability) {
    this.typeOfDisability = typeOfDisability;
  }

  @Column(name = "SCHOOL")
  public String getSchool() {
    return this.school;
  }

  public void setSchool(String school) {
    this.school = school;
  }

  @Column(name = "GRADE", length = 8)
  public String getGrade() {
    return this.grade;
  }

  public void setGrade(String grade) {
    this.grade = grade;
  }

  @Column(name = "INTAKE_METHOD")
  public String getIntakeMethod() {
    return this.intakeMethod;
  }

  public void setIntakeMethod(String intakeMethod) {
    this.intakeMethod = intakeMethod;
  }

  @Column(name = "ORIGINAL_PROBATION_UNIT")
  public String getOriginalProbationUnit() {
    return originalProbationUnit;
  }

  public void setOriginalProbationUnit(String originalProbationUnit) {
    this.originalProbationUnit = originalProbationUnit;
  }

  @OneToMany(fetch = FetchType.LAZY, mappedBy = "child")
  public Set<ChildGuardian> getChildGuardians() {
    return this.childGuardians;
  }



  public void setChildGuardians(Set<ChildGuardian> childGuardians) {
    this.childGuardians = childGuardians;
  }

  @Column(name = "COMMENT")
  public String getComment() {
    return comment;
  }

  public void setComment(String comment) {
    this.comment = comment;
  }

  @Column(name = "DATE_OF_REGISTRATION")
  public Calendar getDateOfRegistration() {
    return dateOfRegistration;
  }

  public void setDateOfRegistration(Calendar dateOfRegistration) {
    this.dateOfRegistration = dateOfRegistration;
  }

  @Column(name = "CATEGORY")
  public String getCategory() {
    return category;
  }

  public void setCategory(String category) {
    this.category = category;
  }

  @Column(name = "BIRTH_CERTIFICATE")
  public String getBirthCertificate() {
    return birthCertificate;
  }

  public void setBirthCertificate(String birthCertificate) {
    this.birthCertificate = birthCertificate;
  }

  @Column(name = "PROFORMA")
  public String getProforma() {
    return proforma;
  }

  public void setProforma(String proforma) {
    this.proforma = proforma;
  }

  @Column(name = "VACCINATION_CARD")
  public String getVaccinationCard() {
    return vaccinationCard;
  }

  public void setVaccinationCard(String vaccinationCard) {
    this.vaccinationCard = vaccinationCard;
  }

  @Column(name = "PARENTS_AVAILABILITY")
  public String getParentsAvailability() {
    return parentsAvailability;
  }

  public void setParentsAvailability(String parentsAvailability) {
    this.parentsAvailability = parentsAvailability;
  }

  @Column(name = "HISTORY")
  public String getHistory() {
    return history;
  }

  public void setHistory(String history) {
    this.history = history;
  }
  

  @Column(name = "STATUS")
  public int getStatus() {
    return status;
  }

  public void setStatus(int status) {
    this.status = status;
  }

}
