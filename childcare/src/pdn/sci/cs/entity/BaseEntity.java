package pdn.sci.cs.entity;

import java.util.Calendar;

import javax.persistence.Column;
import javax.persistence.MappedSuperclass;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

@MappedSuperclass
public abstract class BaseEntity  {

	public static final String SORT_ORDER = "sortOrder";
	protected String id;
	protected Integer sortOrder;
	protected String insertUserId;
	protected String updateUserId;
	protected Calendar insertDateTime;
	protected Calendar updateDateTime;
	
	//public abstract String getId();

	@Column(name = "SORT_ORDER")
	public Integer getSortOrder() {
		return this.sortOrder;
	}

	public void setSortOrder(Integer sortOrder) {
		this.sortOrder = sortOrder;
	}

	@Column(name = "INSERT_USER_ID", length = 32)
	public String getInsertUserId() {
		return this.insertUserId;
	}

	public void setInsertUserId(String insertUserId) {
		this.insertUserId = insertUserId;
	}

	@Column(name = "UPDATE_USER_ID", length = 32)
	public String getUpdateUserId() {
		return this.updateUserId;
	}

	public void setUpdateUserId(String updateUserId) {
		this.updateUserId = updateUserId;
	}

	@Temporal(TemporalType.TIMESTAMP)
	@Column(name = "INSERT_DATETIME")
	public Calendar getInsertDateTime() {
		return this.insertDateTime;
	}

	public void setInsertDateTime(Calendar insertDatetime) {
		this.insertDateTime = insertDatetime;
	}

	@Temporal(TemporalType.TIMESTAMP)
	@Column(name = "UPDATE_DATETIME")
	public Calendar getUpdateDateTime() {
		return this.updateDateTime;
	}

	public void setUpdateDateTime(Calendar updateDatetime) {
		this.updateDateTime = updateDatetime;
	}

}
