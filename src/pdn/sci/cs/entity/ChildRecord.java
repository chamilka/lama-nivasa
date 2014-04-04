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
@Table(name = "child_record")
@GenericGenerator(name = "uuid-strategy", strategy = "uuid.hex")
public class ChildRecord extends BaseEntity implements java.io.Serializable {

	public static final String CHILD_ID = "child.id";
	private static final long serialVersionUID = 1L;
	private String id;
	private Child child;
	private Calendar recordDate;
	private String comment;


	public ChildRecord() {
	}

	public ChildRecord(String id, Child child, Calendar recordDate) {
		this.id = id;
		this.child = child;
		this.recordDate = recordDate;
	}

	public ChildRecord(String id, Child child, Calendar recordDate, String comment,
			Integer sortOrder, String insertUserId, String updateUserId,
			Calendar insertDatetime, Calendar updateDatetime) {
		this.id = id;
		this.child = child;
		this.recordDate = recordDate;
		this.comment = comment;
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

	@Temporal(TemporalType.TIMESTAMP)
	@Column(name = "RECORD_DATE", nullable = false)
	public Calendar getRecordDate() {
		return this.recordDate;
	}

	public void setRecordDate(Calendar recordDate) {
		this.recordDate = recordDate;
	}

	@Column(name = "COMMENT", length = 65535)
	public String getComment() {
		return this.comment;
	}

	public void setComment(String comment) {
		this.comment = comment;
	}

}
