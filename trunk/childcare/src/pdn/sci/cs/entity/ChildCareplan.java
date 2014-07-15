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
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import org.hibernate.annotations.GenericGenerator;

@Entity
@Table(name = "child_careplan")
@GenericGenerator(name = "uuid-strategy", strategy = "uuid.hex")
public class ChildCareplan extends BaseEntity implements java.io.Serializable {

  public static final String CHILD_ID = "child.id";
  private static final long serialVersionUID = 1L;
  private String id;
  private Child child;
  private String category;
  private Calendar dateStart;
  private Calendar dateEnd;
  private String status;
  private String location;
  private String preNote;
  private String actionTaken;
  private String postNote;

  public ChildCareplan() {}

  public ChildCareplan(String id, Child child, Calendar dateStart) {
    this.id = id;
    this.child = child;
    this.dateStart = dateStart;
  }

  public ChildCareplan(String id, Child child, Calendar dateStart, String comment,
      Integer sortOrder, String insertUserId, String updateUserId, Calendar insertDatetime,
      Calendar updateDatetime) {
    this.id = id;
    this.child = child;
    this.dateStart = dateStart;
    this.sortOrder = sortOrder;
    this.insertUserId = insertUserId;
    this.updateUserId = updateUserId;
    this.insertDateTime = insertDatetime;
    this.updateDateTime = updateDatetime;
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
  @JoinColumn(name = "CHILD_ID", nullable = false)
  public Child getChild() {
    return this.child;
  }

  public void setChild(Child child) {
    this.child = child;
  }

  @Column(name = "CATEGORY")
  public String getCategory() {
    return category;
  }

  public void setCategory(String category) {
    this.category = category;
  }

  @Temporal(TemporalType.TIMESTAMP)
  @Column(name = "DATE_START")
  public Calendar getDateStart() {
    return dateStart;
  }

  public void setDateStart(Calendar dateStart) {
    this.dateStart = dateStart;
  }

  @Temporal(TemporalType.TIMESTAMP)
  @Column(name = "DATE_END")
  public Calendar getDateEnd() {
    return dateEnd;
  }

  public void setDateEnd(Calendar dateEnd) {
    this.dateEnd = dateEnd;
  }

  @Column(name = "STATUS")
  public String getStatus() {
    return status;
  }

  public void setStatus(String status) {
    this.status = status;
  }

  @Column(name = "LOCATION")
  public String getLocation() {
    return location;
  }

  public void setLocation(String location) {
    this.location = location;
  }

  @Column(name = "PRE_NOTE")
  public String getPreNote() {
    return preNote;
  }

  public void setPreNote(String preNote) {
    this.preNote = preNote;
  }

  @Column(name = "ACTION_TAKEN")
  public String getActionTaken() {
    return actionTaken;
  }

  public void setActionTaken(String actionTaken) {
    this.actionTaken = actionTaken;
  }

  @Column(name = "POST_NOTE")
  public String getPostNote() {
    return postNote;
  }

  public void setPostNote(String postNote) {
    this.postNote = postNote;
  }

}
