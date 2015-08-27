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
@Table(name = "child_transfer")
@GenericGenerator(name = "uuid-strategy", strategy = "uuid.hex")
public class ChildTransfer extends BaseEntity implements java.io.Serializable {

	private static final long serialVersionUID = 1L;
	private Child child;
	private LamaNivasa fromLamaNivasaId;
	private LamaNivasa toLamaNivasaId;
	private Calendar transferDate;
	private String reason;
	private String comment;
	private int status;

	public ChildTransfer() {
	}

	public ChildTransfer(String id, Child child, LamaNivasa fromLamaNivasaId) {
		this.id = id;
		this.child = child;
		this.fromLamaNivasaId = fromLamaNivasaId;
	}

	public ChildTransfer(String id, Child child, LamaNivasa fromLamaNivasaId, LamaNivasa toLamaNivasaId,
			Calendar transferDate, String reason, String comment, Integer status,
			Integer sortOrder, String insertUserId, String updateUserId,
			Calendar insertDatetime, Calendar updateDatetime) {
		this.id = id;
		this.child = child;
		this.fromLamaNivasaId = toLamaNivasaId;
		this.toLamaNivasaId = fromLamaNivasaId;
		this.transferDate = transferDate;
		this.reason = reason;
		this.comment = comment;
		this.status = status;
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
	
	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "FROM_LAMA_NIVASA_ID", nullable = false)
	public LamaNivasa getFromLamaNivasaId() {
		return fromLamaNivasaId;
	}

	public void setFromLamaNivasaId(LamaNivasa fromLamaNivasaId) {
		this.fromLamaNivasaId = fromLamaNivasaId;
	}

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "TO_LAMA_NIVASA_ID", nullable = true)
	public LamaNivasa getToLamaNivasaId() {
		return toLamaNivasaId;
	}

	public void setToLamaNivasaId(LamaNivasa toLamaNivasaId) {
		this.toLamaNivasaId = toLamaNivasaId;
	}

	@Temporal(TemporalType.TIMESTAMP)
	@Column(name = "TRANSFER_DATE")
	public Calendar getTransferDate() {
		return transferDate;
	}

	public void setTransferDate(Calendar transferDate) {
		this.transferDate = transferDate;
	}

	@Column(name = "REASON")
	public String getReason() {
		return reason;
	}

	public void setReason(String reason) {
		this.reason = reason;
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
